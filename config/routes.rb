Rails.application.routes.draw do

  root "welcome#welcome"

  resources :reservations
  resources :items
  resources :users

  get 'login', to: "sessions#new", as: "login"
  post 'login', to: "sessions#create"
  post "logout", to: "sessions#destroy", as: "logout"
  get 'signup', to: "users#new", as: "signup"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
