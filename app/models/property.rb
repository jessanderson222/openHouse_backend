class Property < ApplicationRecord
    belongs_to :agent
    has_many :matches
    has_many :renters, through: :matches
end
