Rails.application.routes.draw do
  scope "(:locale)", locale: /en|pt/, defaults: { locale: "pt" } do
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

    resources :products
    resources :purchases

    get  '/shopping_cart', to: 'shopping_cart#index'
    post '/add_to_cart/:product_id', to: 'shopping_cart#add_to_cart', as: 'add_to_cart'
    post '/remove_one_from_cart/:product_id', to: 'shopping_cart#remove_one_from_cart', as: 'remove_one_from_cart'
    post '/remove_all_from_cart/:product_id', to: 'shopping_cart#remove_all_from_cart', as: 'remove_all_from_cart'

    root to: "home#index"

    get "adms/control_panel" => "adms/control_panel#index"

    post "accept_provider/:provider_id" => "adms/control_panel#accept_provider", as: "accept_provider"
    post "reject_provider/:provider_id" => "adms/control_panel#reject_provider", as: "reject_provider"
  end
end
