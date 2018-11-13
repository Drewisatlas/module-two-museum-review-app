Rails.application.routes.draw do
  resources :user_types
  resources :museum_types
  resources :reviews
  resources :users, only: [:show]
  resources :museums, only: [:index, :show]
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/museums", to: "sessions#destroy", as: '/logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
