class Api::V1::MatchesController < ApplicationController
    def index
        @matches = Match.all 
        render(json: @matches)
    end 

    def show
        @match = Match.find(params[:id])
        render json: @match, status: 200
    end 

    def create
        @match = Match.create(match_params)
        render json: @match, status: 201
    end 

    def update
        @match = Match.find(params[:id])
        @match.update(match_params)
        render json: @match, status: 200
    end 

    def destroy
        @match = Match.find(params[:id])
        matchId = @match.id
        @match.destroy
        @matches = Match.all 
        render json: {matches: @matches, message:"Match removed"}
    end 

    private
    def match_params
        params.permit(:renter_id, property_id)
    end 

end
