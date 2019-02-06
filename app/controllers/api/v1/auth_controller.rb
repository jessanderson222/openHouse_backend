require 'pry'
class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]
 
    def create
      # binding.pry
      @renter = Renter.find_by(username: renter_login_params[:username])
      #Renter#authenticate comes from BCrypt
      if @renter && @renter.authenticate(renter_login_params[:password])
        # encode token comes from ApplicationController
        token = encode_token({ renter_id: @renter.id })
        render json: { renter: @renter, jwt: token }
      else
        render json: { message: 'Invalid username or password' }, status: :unauthorized
      end
    end

    def show 
      binding.pry
      string = request.authorization
      token = JWT.decode(string, 'my_s3cr3t')[0]
      id = token["renter_id"].to_i 
      @renter = Renter.find(id)
      if @renter 
        renter = RenterSerializer.new(@renter)
        render json: { renter: renter }
      else 
        render json: {error: "didn't work"}, status: 422
      end 
    end 
   
    private
   
    def renter_login_params
      # params { renter: {renter: 'Chandler Bing', password: 'hi' } }
      params.require(:renter).permit(:username, :password, :matches)
    end
  end
