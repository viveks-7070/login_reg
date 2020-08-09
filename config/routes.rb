Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, :shoes, :sessions

  root 'users#index'
  # get '/' => 'users#index'
  # post '/sessions' => 'sessions#create'
  # post '/users' => 'users#create'
  # get '/shoes' => 'shoes#index'
end
