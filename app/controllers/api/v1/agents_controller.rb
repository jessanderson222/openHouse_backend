require 'pry'
class Api::V1::AgentsController < ApplicationController
    skip_before_action :authorized, only: [:create]
    
    def profile 
        
        render json: { agent: (current_user) }, status: :accepted
    end 

    def index
        @agents = Agent.all 
        render(json: @agents)
    end 

    def show
        @agent = Agent.find(params[:id])
        render json: @agent, status: 200
    end 

    def create
        # byebug
        @agent = Agent.create(agent_params)
        if @agent.valid?
            token = JWT.encode({agent_id: @agent.id}, 'my_s3cr3t')
            render json: { agent: @agent, jwt: token }
        else 
            render json: {error: 'failed to create account'},
            status: 422
        end 
    end 


    private
    def agent_params
        params.require(:agent).permit(:name, :img_url, :company, :email, :password)
    end 




end
