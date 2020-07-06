class Park < ApplicationRecord
    has_many :trails
    has_many :park_states
    has_many :states, through: :park_states
end
