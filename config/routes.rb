Rails.application.routes.draw do
  devise_for :people, controllers: {
    sessions:      'people/sessions',
    password:      'people/passwords',
    registrations: 'clients/registrations'
  }
end
