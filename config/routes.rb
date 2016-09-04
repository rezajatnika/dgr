Rails.application.routes.draw do
  root 'home#index'

  get 'home/result', to: 'home#result'
end
