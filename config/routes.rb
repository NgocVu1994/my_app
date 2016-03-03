Rails.application.routes.draw do

  namespace :admin do
  get 'users/index'
  end

  get 'products/index'

  namespace :admin do
  get 'categories/new'
  end

  root "static_pages#home"
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"
  get "signin" => "users#new"
  
  resources :users
  resources :products
  namespace :admin do
    root "static_pages#home"
    resources :categories
    resources :products
    resources :users
  end

end
