class User < ApplicationRecord

    has_many :hikes 
    has_many :trails, through: :hikes
    has_secure_password
    
    validates :name, presence: true, uniqueness: {case_sensitive: false}

    def states 
        self.trails.each do |trail|
            trail.park.states.each do |state|
                return state
            end 
        end 
    end 
end
