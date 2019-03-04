Rails.application.routes.draw do
  resources :likes
  resources :comments
  resources :blogs
  resources :users
  resources :coffee_shops
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
