class AgentSerializer < ActiveModel::Serializer
    attributes: :name, :profile_picture, :company, :email
    has_many :properties
    has_many :matches, through: :properties
end 