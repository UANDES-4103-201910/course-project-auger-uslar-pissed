Rails.application.routes.draw do
  resources :admin_zones
  resources :innappropiate_requests
  resources :votes
  resources :comments
  resources :posts
  resources :users
  resources :zones
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
