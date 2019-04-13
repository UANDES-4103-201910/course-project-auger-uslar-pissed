Rails.application.routes.draw do

  get 'static_pages/home'
  root to:'static_pages#home'

  resources :admin_zones
  resources :innappropiate_requests
  resources :votes
  resources :comments
  resources :posts
  resources :users
  resources :zones
  
end
