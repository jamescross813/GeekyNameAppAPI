Rails.application.routes.draw do

  # resources :session, only: [:create]
  post '/login', to: 'sessions#create' 
  post '/logout', to: 'sessions#destroy'
  # post '/signup', to: 'users#create'

  resources :group_events, only:[:show, :index]
  resources :friend_groups, only:[:show, :index]
  resources :event_availabilities, only:[:show, :index]
  resources :group_availabilities, only:[:show, :index]
  resources :user_availabilities, only:[:show, :index]
  resources :user_events, only:[:show, :index]
  resources :user_groups, only:[:show, :index]
  resources :events
  resources :friends
  resources :availabilities
  resources :date_infos, only:[:show, :index]
  resources :groups
  resources :users

 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
