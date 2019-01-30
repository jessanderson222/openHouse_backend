class PropertySerializer < ActiveModel::Serializer
    attributes :bedrooms, :bathrooms, :distance_to_subway, :borough, :neighborhood, :pet_friendly, :elevator, :laundry, :doorman, :move_in_date, :rent, :img_1, :img_2, :img_3
    belongs_to :agent
end 