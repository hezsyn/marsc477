Rails.application.routes.draw do

root 'sessions#new'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions

  get 'simulation', to: 'simulations#view', as: 'simulation'
  get 'simulation_history', to: 'simulation#history', as: 'history'

end
