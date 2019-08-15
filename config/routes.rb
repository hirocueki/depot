Rails.application.routes.draw do
  resources :orders
  # admin
  resources :products

  # user
  resources :carts, only: [:show, :destroy]
  resources :cart_items, only: [:create]
  resources :store, only: [:index, :show]

  root to: 'store#index'
end
