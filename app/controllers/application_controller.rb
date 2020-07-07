class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        @current_user = User.find(session[:user])
    end 

    def logged_in?
        !!current_user 
    end 

    def authorized
        redirect_to login_path unless logged_in? 
    end 

    def homepage 
        render :homepage
    end 

    def about 
    end 


end
