require 'pry'
class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]
 
    def create
      # binding.pry
      @agent = Agent.find_by(email: agent_login_params[:email])
      #Renter#authenticate comes from BCrypt
      if @agent && @agent.authenticate(agent_login_params[:password])
        # encode token comes from ApplicationController
        token = encode_token({ agent_id: @agent.id })
        render json: { renter: @agent, jwt: token }
      else
        render json: { message: 'Invalid username or password' }, status: :unauthorized
      end
    end

    def show 
      # binding.pry
      string = request.authorization
      token = JWT.decode(string, 'my_s3cr3t')[0]
      id = token["agent_id"].to_i 
      @agent = Agent.find(id)
      if @agent
        agent = AgentSerializer.new(@agent)
        render json: { agent: agent }
      else 
        render json: {error: "didn't work"}, status: 422
      end 
    end 
   
    private
   
    def agent_login_params
      # params { renter: {renter: 'Chandler Bing', password: 'hi' } }
      params.require(:agent).permit(:email, :password, :matches, :properties)
    end
  end