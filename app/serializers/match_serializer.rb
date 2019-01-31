class MatchSerializer < ActiveModel::Serializer 
    attributes :renter_id, :property_id
    belongs_to :renter 
    belongs_to :property
end 