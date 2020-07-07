class StatesController < ApplicationController

    def show 
        @state = State.find(params[:id])
    end 

    def index 
        @states = State.all
    end 


end
