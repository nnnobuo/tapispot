Rails.application.routes.draw do
  devise_for :users
  root :to => 'tapispot#index'

  resources :tapispot
end
