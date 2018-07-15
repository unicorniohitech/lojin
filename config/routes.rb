Rails.application.routes.draw do
  resources :characteristics
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  resources :categories
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
