class Api::V1::AgentsController < ApplicationController
    def index
        @agents = Agent.all 
        render(json: @agents)
    end 

    def show
        @agent = Agent.find(params[:id])
        render json: @agent, status: 200
    end 

    def create
        @agent = Agent.create(agent_params)
        render json: @agent, status: 201
    end 


    private
    def agent_params
        params.require(:agent).permit(:name, :img_url, :company, :email, :password)
    end 




end
