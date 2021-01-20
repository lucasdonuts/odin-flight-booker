Rails.application.routes.draw do
  resources :flights do
      get 'search', on: :member
  end
  resources :airports
  resources :pages
  devise_for :users
  root "flights#index"
end
