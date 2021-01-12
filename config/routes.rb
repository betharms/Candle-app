Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'carts/show'
  devise_for :users
  root to: 'pages#home'

  resources :candles, only: [:index, :show]
  resources :pages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
