require "pry"
class Api::V1::RentersController < ApplicationController
    skip_before_action :authorized
    # only: [:create, :update]
    
    def profile 
        render json: { renter: RenterSerializer.new(current_renter) }, status: :accepted
    end 

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
        if @renter.valid?
            token = JWT.encode({renter_id: @renter.id}, 'my_s3cr3t')
            render json: { renter: @renter, jwt: token }
        else 
            render json: {error: 'failed to create account'},
            status: 422
        end 
    end 

    def update
        
        @renter = Renter.find(params[:id])
        if @renter.update(renter_params)
            render json: @renter, status: :accepted 
        else 
            render json: { errors: @renter.errors.full_messages}
        end 
    end 

    private
    def renter_params 
        params.require(:renter).permit(:username, :img_url, :matches, :password, :email, :bedrooms, :bathrooms, :distance_to_subway, :borough, :neighborhood, :pet_friendly, :elevator, :laundry, :doorman, :move_in_date, :rent_min, :rent_max)
    end 
 
end
