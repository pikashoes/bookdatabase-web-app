Rails.application.routes.draw do
  root 'books#index'
  get '/help' => 'user_stories#index'

  #Sessions
  get '/sessions/new' => 'sessions#new', as: 'new_session'
  post'/sessions' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'

  resources :books
  resources :reviews
  resources :users

end
