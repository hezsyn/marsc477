Rails.application.routes.draw do

root 'sessions#new'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions

  resources :admins
  get 'simulations', to: 'simulations#view', as: 'simulations'
  resources :dataviews

end