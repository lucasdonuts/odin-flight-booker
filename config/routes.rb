Rails.application.routes.draw do
  resources :bookings, only: [:new, :create, :show]
  resources :flights, only: [:index]
  root "flights#index"
end
