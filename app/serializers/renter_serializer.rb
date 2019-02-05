class RenterSerializer < ActiveModel::Serializer 
    attributes :id, :username, :img_url, :email, :bedrooms, :bathrooms, :distance_to_subway, :borough, :neighborhood, :pet_friendly, :elevator, :laundry, :doorman, :move_in_date, :rent_min, :rent_max
    has_many :matches
    has_many :properties, through: :matches
end 