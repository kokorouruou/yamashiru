Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'themes#index'
  get 'tweets/search'
  resources :tweets do
    resources :themes, only: [:index]
    resources :comments, only: :create
  end

  resources :baggages, only: [:index, :new]
  resources :users, only: :show
end
