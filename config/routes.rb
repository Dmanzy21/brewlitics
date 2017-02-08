Rails.application.routes.draw do
  get     'sessions/new'
  get     'users/new'
  root    'static_pages#home'
  get     '/about',   to: 'static_pages#about'
  get     '/contact', to: 'static_pages#contact'
  get     '/signup',  to: 'users#new'
  post    '/signup',  to: 'users#create'
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'
  get     '/admin',   to: 'update_email#admin'
  post    '/admin',   to: 'update_email#new'
  resources :users
  resources :account_activations, only: [:edit]
  resources :unsubscribe, only: [:edit]
end