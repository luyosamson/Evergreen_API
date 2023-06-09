Rails.application.routes.draw do
  # get 'home/index'
  root to: 'home#index'
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  resources :plants
  resources :flowers

  resources :sellers, only: [:index,:show,:create]
  resources :orders, only: [:index,:show]
  resources :users,only: [:index,:show,:create]
  resources :profiles, only: [:index,:show]
  resources :sellerprofiles, only: [:index,:show]

# root to: 'home#index'

  post '/signupseller', to: 'sellers#create'
  post '/signup', to: 'users#create'
   

  #Login and Logout of User Functions to be handled in the sessions
  post '/login', to: 'sessions#create'
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#showme"

  #Login and Logout of Seller to be handled in Session controller

  post '/loginseller', to: 'seller_sessions#create'
  delete '/logoutseller', to: 'seller_sessions#destroy'
     
end
