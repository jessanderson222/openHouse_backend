class Renter < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :matches
    has_many :properties, through: :matches
end
