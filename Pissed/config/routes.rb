Rails.application.routes.draw do

  get 'search/author'
  get 'search/post'
  get 'black_list/main'
  get 'black_list/recover'
  get 'black_list/delete'
  get 'dumpster/main'
  get 'dumpster/recover'
  get 'dumpster/delete'
  get 'login/changepassword'
  get 'login/recoverpassword'
  get 'login/logout'
  get 'policyandservices/documents'
  get 'policyandservices/abusivecontent'
  get 'login/main'
  get 'registration/main'
  get 'user_profile/main'

  get 'mainpage/home'
  root to: 'mainpage#home'
  resources :admin_zones
  resources :innappropiate_requests
  resources :votes
  resources :comments
  resources :posts
  resources :users
  resources :zones
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
