class Api::V1::RentersController < ApplicationController
    def index
        @renters = Renter.all 
        render(json: @renters)
    end 
    
    def show
        @renter = Renter.find(params[:id])
        render json: @renter, status: 200
    end 

    def create
        @renter = Renter.create(renter_params)
        render json: @renter, status: 201
    end 

    def update
        @renter = Renter.find(params[:id])
        @renter.update(renter_params)
        render json: @renter, status: 200
    end 

    private
    def renter_params 
        params.permit(:username, :img_url, :password, :email, :bedrooms, :bathrooms, :distance_to_subway, :borough, :neighborhood, :pet_friendly, :elevator, :laundry, :doorman, :move_in_date, :rent_min, :rent_max)
    end 
 
end
