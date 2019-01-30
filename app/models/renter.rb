class Renter < ApplicationRecord
    has_many :matches
    has_many :properties, through: :matches
end
