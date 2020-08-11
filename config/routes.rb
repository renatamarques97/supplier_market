Rails.application.routes.draw do
  # devise_for :people, controllers: {
  #   sessions:      'people/sessions',
  #   password:      'people/passwords',
  #   registrations: 'clients/registrations'
  # }

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
  
  # devise_for :adm, controllers: {
  #   sessions:      'adm/sessions',
  #   password:      'adm/passwords'
  # }

  root to: "home#index"
  get '/check_logged', to: 'home#check_logged'
end
