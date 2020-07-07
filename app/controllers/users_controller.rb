class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]

    def new 
        @user = User.new
    end 

    def create 
        @user = User.create(user_params)
        if @user.valid?
            redirect_to states_path
        else 
            render :new 
        end
    end 

    def edit 
    end 

    def update 
        @user.update(user_params)
        redirect_to user_path(@user)
    end 

    def show 
    end 
    
    def index 
        @users = User.all
    end 
    
    def destroy 
        @user.destroy 
        redirect_to login_path
    end 

    private 

    def find_user
        @user = User.find(params[:id])
    end 

    def user_params 
        params.require(:user).permit(:name)
    end 
end
