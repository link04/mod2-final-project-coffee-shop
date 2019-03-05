Rails.application.routes.draw do
  root 'application#index'
  resources :likes
  resources :comments
  resources :blogs
  resources :users
  resources :coffee_shops, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
