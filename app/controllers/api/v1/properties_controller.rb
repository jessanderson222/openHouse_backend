class Api::V1::PropertiesController < ApplicationController
    def index
        @properties = Property.all 
        render(json: @properties)
    end 

    def show
        @property = Property.find(params[:id])
        render json: @property, status: 200
    end 

    def create
        @property = Property.create(property_params)
        render json: @property, status: 201
    end 

    def update 
        @property = Property.find(params[:id])
        @property.update(property_params)
        render json: @property, status: 200
    end 

    def destroy
        @property = Property.find(params[:id])
        propertyId = @property.id 
        @property.destroy
        @properties = Property.all 
        render json: {properties: @properties, message: "Property Rented!"}
    end 

    private 
    def property_params 
        params.permit(:bedrooms, :bathrooms, :distance_to_subway, :borough, :neighborhood, :pet_friendly, :elevator, :laundry, :doorman, :move_in_date, :rent, :img_1, :img_2, :img_3)
    end 
end
