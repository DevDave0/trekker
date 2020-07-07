class TrailsController < ApplicationController

    def show 
        @trail = Trail.find(params[:id])
    end 

    def index 
        @trails = Trail.all.sort_by_first_letter
    end 

end
