class User < ApplicationRecord
    has_many :hikes 
    has_many :trails, through: :hikes

    def states 
        self.trails.each do |trail|
            trail.park.states.each do |state|
                return state
            end 
        end 
    end 
end
