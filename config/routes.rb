Rails.application.routes.draw do
  root to: 'index#index'
  post 'users/login'
  get 'users/logout'
  get 'users/registration'
  post "users/register"
  resources :users
  get 'laba12/input'  
  get 'laba12/view'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
