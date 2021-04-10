Rails.application.routes.draw do
  resources :friends
  devise_for :users
  root 'friends#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
