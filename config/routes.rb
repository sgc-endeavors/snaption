Rails.application.routes.draw do
  root to: 'media#index'

  resources :users, only: [:new, :create]
  resources :media, only: [:new, :create] do
    resources :captions, only: [:create, :new]
  end

  delete '/logout', to: 'sessions#destroy', as: 'logout'
  post '/login', to: 'sessions#create', as: 'login'



end
