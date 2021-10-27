Rails.application.routes.draw do
  resources :friend_groups
  resources :event_availabilities
  resources :group_availabilities
  resources :user_availabilities
  resources :user_events
  resources :user_groups
  resources :events
  resources :friends
  resources :availabilities
  resources :date_infos
  resources :groups
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
