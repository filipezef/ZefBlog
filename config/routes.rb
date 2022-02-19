Rails.application.routes.draw do
  root 'pages#about'
  get 'back-end', to: 'pages#back_end'
  get 'front-end', to: 'pages#front_end'
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
end
