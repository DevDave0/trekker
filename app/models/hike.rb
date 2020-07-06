class Hike < ApplicationRecord
    belongs_to :user 
    belongs_to :trail 

    def trail=(trail_name)
        self.trail = Trail.find_or_create_by(trail: trail_name) 
    end 
end
