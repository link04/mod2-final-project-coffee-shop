Rails.application.routes.draw do
  root 'application#index'
  resources :likes
  resources :comments
  resources :blogs
  resources :users
  resources :coffee_shops, only: [:index]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
