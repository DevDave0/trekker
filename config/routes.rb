Rails.application.routes.draw do
  get "/", to: "application#homepage", as: "homepage"
  get "/login", to: "sessions#login"
  post "/login", to: "sessions#process_login"
  get "/logout", to: "sessions#logout"


  resources :states
  resources :park_states
  resources :parks
  resources :trails do 
    resources :hikes, only: [:new, :create, :show, :destroy]
  end 
    
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
