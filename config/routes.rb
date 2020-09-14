Rails.application.routes.draw do
  devise_for :clients, controllers: {
    sessions:      'clients/sessions',
    password:      'clients/passwords',
    registrations: 'clients/registrations'
  }

  devise_for :providers, controllers: {
    sessions:      'providers/sessions',
    password:      'providers/passwords',
    registrations: 'providers/registrations'
  }

  devise_for :adm, controllers: {
    sessions:      'adm/sessions',
    password:      'adm/passwords'
  }

  resources :products
  resources :purchases

  post '/add_to_cart/:product_id' => 'shopping_cart#add_to_cart', as: 'add_to_cart'

  root to: "home#index"
end
