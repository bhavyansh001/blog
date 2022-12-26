Rails.application.routes.draw do
  # get 'articles/index'
  # get 'articles/new'
  # get 'articles/edit'
  # get 'articles/show'
  resources :articles
  root 'home#index'
  devise_for :users
end
