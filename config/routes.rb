Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: "pages#dashboard"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :favourites, only: [:index, :show, :new, :create, :delete]
  resources :dashboard, only: [:show]
  resources :cafes do
    resources :tables, only: [:new, :create, :edit, :update, :destroy]
  end


  resources :tables, only: [] do
    resources :bookings, only: [:create, :new]
  end

  resources :bookings, only: [:show, :edit, :update, :destroy] do
    resources :reviews, only: [:new, :create]
  end

  resources :dashboard, only: [:show]
  resources :reviews, only: [:destroy]
  resources :users, only: [:show]
end

