Rails.application.routes.draw do
  root to: 'photos#index'

  resources :users, only: [:new, :create]

  delete '/logout', to: 'sessions#destroy', as: 'logout'
  post '/login', to: 'sessions#create', as: 'login'



end
