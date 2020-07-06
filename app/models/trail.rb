class Trail < ApplicationRecord
    has_many :hikes 
    has_many :users, through: :hikes
    belongs_to :park
end
