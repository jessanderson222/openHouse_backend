class Agent < ApplicationRecord
    has_many :properties
    has_many :matches, through: :properties
end
