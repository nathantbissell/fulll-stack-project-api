# frozen_string_literal: true

Rails.application.routes.draw do
  resources :shoes, except: %i[new edit]

  resources :users, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  #users
  # get '/users' => 'users#index'
  #
  # #shoes vCustom Routes
  get '/shoes' => 'shoes#index'
  get '/shoes/:id' => 'shoes#show'
  post '/shoes' => 'shoes#create'
  patch '/shoes/:id' => 'shoes#update'

end
