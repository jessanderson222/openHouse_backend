class AgentSerializer < ActiveModel::Serializer
    attributes :name, :email, :company, :img_url, :properties, :matches
    has_many :properties
    has_many :matches, through: :properties
end 