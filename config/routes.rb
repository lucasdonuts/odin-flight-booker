Rails.application.routes.draw do
  resources :flights
  resources :airports
  devise_for :users
  root "airports#index"
end
