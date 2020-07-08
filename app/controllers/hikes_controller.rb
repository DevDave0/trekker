class HikesController < ApplicationController
    before_action :find_hike, only: [:show]
    before_action :authorized

    def show 
    end 

    def new 
        if current_user
            @hike = Hike.new
        else 
            redirect_to login_path 
        end 
    end 

    def create 
        @hike = Hike.new
        @hike.name = params[:hike][:name]
        @hike.user_rating = params[:hike][:user_rating]
        @hike.user_id = current_user.id
        @hike.trail_id = params[:trail_id]
        @hike.save
        redirect_to trail_hike_path(@hike.trail_id, @hike.id)
    end 

    private 

    def find_hike 
        @hike = Hike.find(params[:id])
    end 

    # def hike_params 
    #     params.require(:hike).permit(:name, :user_rating, :user_id, :trail_id)
    # end 


end
