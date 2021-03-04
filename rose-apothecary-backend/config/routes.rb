Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/login', to: 'auth#create'
  post '/auto_login', to: 'auth#auto_login'
  get '/logged_in', to: 'application#logged_in?'

  # resources :users, only: [:create, :index, :show, :post]
  resources :users
  resources :carts
  resources :items
  resources :cart_items 
  resources:reviews
end
