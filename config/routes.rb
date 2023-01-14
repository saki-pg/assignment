Rails.application.routes.draw do
  root to: "homes#home"
  get 'homes/home'
  get 'rooms/new'
  get 'reservations/index'
  get 'users/account'

  get '/account',to:'users#account'
  get '/profile',to:'users#profile'

  devise_for :users,controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  resources :users
  get 'rooms/search',to:'rooms#search'
  get 'rooms/posts',to:'rooms#posts'
  resources :rooms
  resources :reservations

end
