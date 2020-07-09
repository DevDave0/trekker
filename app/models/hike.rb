class Hike < ApplicationRecord
    belongs_to :user 
    belongs_to :trail 
    
    validates :name, presence: true, uniqueness: true


    def self.average_rating_of_all_hikes 
        result = Hike.all.map{|hike| hike.user_rating}
        sum = result.reduce(:+)
        x = result.count
        sum/x
    end 

end
