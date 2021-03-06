class PropertySerializer < ActiveModel::Serializer
    attributes :id, :agent_id, :agent, :matches, :renters, :bedrooms, :bathrooms, :distance_to_subway, :borough, :neighborhood, :pet_friendly, :elevator, :laundry, :doorman, :move_in_date, :rent, :img_1, :img_2, :img_3
    belongs_to :agent
    has_many :matches
    has_many :renters, through: :matches
end 