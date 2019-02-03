class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]
 
    def create
      @renter = Renter.find_by(username: renter_login_params[:username])
      #User#authenticate comes from BCrypt
      if @renter && @renter.authenticate(renter_login_params[:password])
        # encode token comes from ApplicationController
        token = encode_token({ renter_id: @renter.id })
        render json: { renter: RenterSerializer.new(@renter), jwt: token }, status: :accepted
      else
        render json: { message: 'Invalid username or password' }, status: :unauthorized
      end
    end
   
    private
   
    def renter_login_params
      # params { renter: {renter: 'Chandler Bing', password: 'hi' } }
      params.require(:renter).permit(:username, :password)
    end
  end
