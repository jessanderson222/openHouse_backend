class Agent < ApplicationRecord
    has_secure_password
    has_many :properties
    has_many :matches, through: :properties
end
