Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root to: 'pages#home'

  resources :candles, only: [:index, :show]
  resources :pages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :admin do
    root to: 'candles#index'
    resources :candles, only: [:index, :new, :show, :edit, :update, :destroy]
  end

end
