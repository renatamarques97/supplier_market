# frozen_string_literal: true

class Providers::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, only: [:create]

  # POST /resource
  def create
    params[:provider] = params[:provider]&.merge(client: false, provider: false)
    super
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |p|
      p.permit(
        :email, 
        :password, 
        :password_confirmation,
        :name, 
        :telephone, 
        :cnpj, 
        :client, 
        :provider
      )
    end
  end
end
