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
        array = Trail.all.map{|trail| trail.average_trail_rating}
    end 

    def self.lowest_rated_trail 
        # looks through all trails, finds the average trail rating in a new array then find the lowest value from that array and return the trail object that has it. 

    end 

    def self.longest_trail 
    end 

    def self.shortest_trail 
    end 

    def total_hikes 
    end 

    def self.all_total_hikes 
    end 

    def self.total_distance_of_all_trails 
    end 

    def self.highest_elevated_trails
    end 

    def self.lowest_elevated_trails
    end 

    def self.hardest_trails 
    end 

    def self.easiest_trails 
    end 

    def self.moderate_trails 
    end 


end
