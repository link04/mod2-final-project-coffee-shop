Rails.application.routes.draw do
  root 'application#index'
  resources :likes, only: [:create, :destroy]
  resources :comments, only: [:create, :destroy]
  resources :blogs, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :coffee_shops, only: [:index]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
