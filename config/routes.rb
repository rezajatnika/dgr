Rails.application.routes.draw do
  namespace :admin do
    resources :divisions
    resources :agents
    resources :inventories
    resources :products
    resources :users
    resources :deposits
    resources :locations

    root to: 'users#index'
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

  # Shipments
  resources :shipments

  # Warehouses
  scope :warehouse do
    resource :incoming_goods do
      member do
        post :scan
      end
    end

    resource :outgoing_goods
  end
end
