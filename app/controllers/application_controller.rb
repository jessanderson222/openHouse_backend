require 'pry'
class ApplicationController < ActionController::API
    before_action :authorized

    def encode_token(payload)
        # secret = Rails.application.secrets.MY_SECRET
        # payload => { beef: 'steak' }
        JWT.encode(payload, 'my_s3cr3t')
        # jwt string: "eyJhbGciOiJIUzI1NiJ9.eyJiZWVmIjoic3RlYWsifQ._IBTHTLGX35ZJWTCcY30tLmwU9arwdpNVxtVU0NpAuI"
      end
     
      def auth_header
        # { 'Authorization': 'Bearer <token>' }
        request.headers['Authorization']
      end
     
      def decoded_token
        if auth_header
          token = auth_header.split(' ')[1]
          # headers: { 'Authorization': 'Bearer <token>' }
          begin
            JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
            # JWT.decode => [{ "beef"=>"steak" }, { "alg"=>"HS256" }]
          rescue JWT::DecodeError
            nil
          end
        end
    end 

    def current_user
        if decoded_token
          # byebug 
          # decoded_token=> [{"user_id"=>2}, {"alg"=>"HS256"}]
          # or nil if we can't decode the token
          user_id = decoded_token[0]['renter_id']
          @user = Renter.find_by(id: user_id)
          # if user found, return token for renter account
          if @user.present?
              return @user 
          # if user not found, Agent.find_by token
          else 
            user_id = decoded_token[0]['agent_id']
            @user = Agent.find_by(id: user_id)
          # if user found, retrun agent token
            if @user.present?
              return @user
          # if not found, return user not found
            else return "not found"
              
            end 
          end 
        end
    end
     
      def logged_in?
        !!current_user
      end

      def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
      end
    
end
