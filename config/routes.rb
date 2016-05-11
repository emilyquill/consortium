Rails.application.routes.draw do

  get '/users/current_user' => 'users#current_user'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/home' => 'pages#home'
  get '/search' => 'schools#search'
  get '/school/:id' => 'schools#show'

  resources :users
  root :to => 'pages#home'


end
