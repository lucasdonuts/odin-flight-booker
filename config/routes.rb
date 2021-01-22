Rails.application.routes.draw do
  resources :passengers
  resources :bookings
  resources :flights
  resources :airports
  devise_for :users
  root "flights#index"
end
