Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get 'plants', to: 'plants#index' 
  # get 'flowers', to: 'flowers#index'
  resources :plants
  resources :flowers
  resources :sellers, only: [:index,:show]
  resources :users,only: [:index,:show]
  resources :profiles, only: [:index,:show]
  resources :sellerprofiles, only: [:index,:show]
 

  
end
