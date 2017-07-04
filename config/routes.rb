Rails.application.routes.draw do
  devise_for :users
  root to: 'speeches#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :speeches do
    resources :reviews, only: [:new, :create]
  end

  resources :users, only: [:show]
end
