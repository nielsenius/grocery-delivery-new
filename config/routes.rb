Rails.application.routes.draw do
  # generated routes
  resources :orders
  resources :items
  resources :grocery_lists
  resources :users
  resources :sessions
  
  # login and user routes
  get 'user/edit', to: 'users#edit', as: :edit_current_user
  get 'signup', to: 'users#new', as: :signup
  get 'login', to: 'sessions#new', as: :login
  get 'logout', to: 'sessions#destroy', as: :logout
  
  # semi-static routes
  get 'home', to: 'home#index', as: :home
  get 'home/about', to: 'home#about', as: :about
  get 'home/contact', to: 'home#contact', as: :contact
  get 'home/privacy', to: 'home#privacy', as: :privacy
  
  # set the root URL
  root to: 'home#index'
end