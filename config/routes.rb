Rails.application.routes.draw do
  # get 'orders/index'
  # get 'orders/show'
  # get 'orders/new'
  # get 'carts/show'
  devise_for :users
  root to: 'pages#home'


  get 'carts/:id', to: "carts#show", as: "cart"
  delete 'carts/:id', to: "carts#destroy"

  post 'cart_candles/:id/add', to: 'cart_candles#add_quantity', as: 'cart_candle_add'
  post 'cart_candles/:id/reduce', to: 'cart_candles#reduce_quantity', as: 'cart_candle_reduce'
  post 'cart_candles', to: 'cart_candle#create'

  get 'cart_candles/:id', to: "create_candles#show", as: "cart_candle"
  delete "cart_candles/:id", to: "cart_candles#destroy"

  resources :candles
  resources :orders
  resources :pages


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
