class Trail < ApplicationRecord
    has_many :hikes 
    has_many :users, through: :hikes
    belongs_to :park

    validates :name, presence: true, uniqueness: true


    def average_trail_rating  
        result = self.hikes.map{|hike| hike.user_rating}
        sum = result.reduce(:+)
        x = result.count
        sum/x
    end 

    def self.highest_rated_trail 
        # looks through all trails, finds the average trail rating in a new array then find the highest value from that array and return the trail object that has it. 
        max = Trail.all.map{|trail| trail.average_trail_rating}.max
        Trail.all.each do |trail|
            if trail.average_trail_rating == max 
                return trail
            end 
        end 
        
    end 

    def self.lowest_rated_trail 
        # looks through all trails, finds the average trail rating in a new array then find the lowest value from that array and return the trail object that has it. 
        min = Trail.all.map{|trail| trail.average_trail_rating}.min
        Trail.all.each do |trail|
            if trail.average_trail_rating == min 
                return trail
            end 
        end 

    end 

    def total_hikers 
        self.hikes.count
    end 

    def self.all_total_hikes 
        self.all.map{|trail| trail.hikes}.count
    end 



    def self.sort_by_first_letter 
        Trail.order('name ASC')
    end 


end
