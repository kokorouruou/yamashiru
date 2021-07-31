Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'themes#index'
  get 'tweets/search'
  resources :tweets, only: [:index, :new, :create, :show] do
    resources :themes, only: [:index]
  end

  resources :baggages, only: [:index, :new]
end
