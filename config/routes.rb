Rails.application.routes.draw do
  root 'home#index'

  # UserSessions
  resources :user_sessions, only: [:new, :create, :destroy]
end
