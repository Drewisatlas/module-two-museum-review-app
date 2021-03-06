Rails.application.routes.draw do
  root to: 'pages#home'
  resources :user_types
  resources :museum_types
  resources :reviews
  resources :users, only: [:show, :new, :create]
  resources :museums, only: [:index, :show]
  resources :analytics, only: [:index, :show]
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/museums", to: "sessions#destroy", as: '/logout'
  post "/analytics/:id/search", to: "analytics#search", as:'search'
  get "/analytics/:id/search/:term", to: 'analytics#search_results'
  get "/museums/:id/all_reviews", to: 'museums#all_reviews', as:'all_reviews'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
