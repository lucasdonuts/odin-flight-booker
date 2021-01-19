Rails.application.routes.draw do
  resources :airports
  devise_for :users
  root "pages#home"
end
