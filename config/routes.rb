Rails.application.routes.draw do
  devise_for :users
  root to: 'speeches#index'
  resources :speeches do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:index]
end
