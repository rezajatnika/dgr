Rails.application.routes.draw do
  namespace :admin do
    resources :divisions
    resources :agents
    resources :inventories
    resources :products
    resources :users

    root to: "divisions#index"
  end

  root 'home#index'

  # UserSession
  resource :user_session, only: [:new, :create, :destroy]

  # Orders
  resources :orders do
    resources :order_items
  end

  # Products
  resources :products
end
