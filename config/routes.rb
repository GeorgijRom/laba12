Rails.application.routes.draw do
  resources :users
  root to: 'index#index'
  post 'users/login'
  post 'users/logout'
  get 'laba12/input'  
  get 'laba12/view'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
