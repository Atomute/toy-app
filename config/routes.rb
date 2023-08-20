Rails.application.routes.draw do
  resources :justtries
  resources :microposts
  resources :users
  root 'users#index'
end
