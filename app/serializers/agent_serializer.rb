class AgentSerializer < ActiveModel::Serializer
    attributes :name, :img_url, :company, :email
    has_many :properties
    has_many :matches, through: :properties
end 