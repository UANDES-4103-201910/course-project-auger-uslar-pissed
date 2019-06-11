Rails.application.routes.draw do

  devise_for :users
  get 'search/author' , to: 'search#author'
  get 'search/post' , to: 'search#post'
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
  resources :users do
    member do
      get 'blacklist'
      put 'blacklist'
      get 'blacklistout'
      put 'blacklistout'
    end
  end
  resources :comments
  resources :posts do
    member do
        get 'dumpster'
        put 'dumpster'
        get 'dumpsterout'
        put 'dumpsterout'
        get 'last_post'
    end
    resources :comments
    member do
      post :like
      post :follow
    end
  end
  resources :zones
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
