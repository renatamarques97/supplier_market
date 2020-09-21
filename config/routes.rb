Rails.application.routes.draw do
  resources :products

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

  devise_for :adms, controllers: {
    sessions:      'adms/sessions',
    password:      'adms/passwords'
  }

  root to: "home#index"

  get "adms/control_panel" => "adms/control_panel#index"

  post "accept_provider/:provider_id" => "adms/control_panel#accept_provider", as: "accept_provider"
  post "reject_provider/:provider_id" => "adms/control_panel#reject_provider", as: "reject_provider"
end
