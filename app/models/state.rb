class State < ApplicationRecord
    has_many :park_states
    has_many :parks, through: :park_states

    def self.sort_by_first_letter 
        State.order('name ASC')
    end 
end
