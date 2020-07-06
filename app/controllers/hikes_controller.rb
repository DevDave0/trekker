class HikesController < ApplicationController
    before_action :find_hike, only: [:show, :edit, :update, :destroy]

    def index 
        @hikes = Hike.all
    end 

    def show 
    end 

    def new 
        @hike = Hike.new
    end 

    def create 
        @hike = Hike.create(hike_params)
        redirect_to hike_path(@hike)
    end 

    def edit 
    end 

    def update 
        @hike.update(hike_params)
        redirect_to hike_path(@hike)
    end 

    def destroy 
        @hike.destroy 
        redirect_to hikes_path
    end 

    private 

    def find_hike 
        @hike = Hike.find(params[:id])
    end 

    def hike_params 
        params.require(:hike).permit(:name, :user_id, :trail_id)
    end 


end
