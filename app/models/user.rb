class User < ApplicationRecord
    has_secure_password

    has_many :hikes 
    has_many :trails, through: :hikes
    
    validates :name, presence: true, uniqueness: {case_sensitive: false}

    def states 
        self.trails.each do |trail|
            trail.park.states.each do |state|
                return state
            end 
        end 
    end 

    def total_distance_hiked 
        self.trails.map{|trail| trail.distance_of_trail}.sum
    end 

    def total_elevation_gain 
        self.trails.map{|trail| trail.elevation}.sum 
    end 
end
