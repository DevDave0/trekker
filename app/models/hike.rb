class Hike < ApplicationRecord
    belongs_to :user 
    belongs_to :trail 

    def self.average_rating_of_all_hikes 
    end 

    def average_rating 
    end 


end
