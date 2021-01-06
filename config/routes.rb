Rails.application.routes.draw do
  devise_for :users
  root to: 'candles#index'

  resources :candles
  resources :pages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
