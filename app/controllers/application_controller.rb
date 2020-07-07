class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        @current_user = User.find(session[:user])
    end 

    def homepage 
        render :homepage
    end 

    def about 
    end 


end
