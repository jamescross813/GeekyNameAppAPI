Rails.application.routes.draw do
  resources :user_events
  resources :user_groups
  resources :events
  resources :friends
  resources :availabilities
  resources :date_infos
  resources :groups
  resources :users
  resources :usernames
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
