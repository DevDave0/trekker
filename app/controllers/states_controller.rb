class StatesController < ApplicationController

    def show 
        @state = State.find(params[:id])
    end 

    def index 
        @states = State.all.sort_by_first_letter
    end 


end
