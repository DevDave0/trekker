class Trail < ApplicationRecord
    has_many :hikes 
    has_many :users, through: :hikes
    belongs_to :park

    def average_trail_rating 
        result = self.hikes.map{|hike| hike.user_rating}
        sum = result.reduce(:+)
        sum/result.count
    end 

    def self.highest_rated_trail 
        # looks through all trails, finds the average trail rating in a new array then find the highest value from that array and return the trail object that has it. 
        Trail.all
    end 


end
array = Train.all.map{|trail|trail.average_trail_rating