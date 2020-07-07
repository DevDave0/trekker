class Park < ApplicationRecord
    has_many :trails
    has_many :park_states
    has_many :states, through: :park_states

    def has_waterfalls? 
        if self.waterfalls == true 
            return "Yes"
        else 
            return "No"
        end 
    end 

end
