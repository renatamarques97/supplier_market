# frozen_string_literal: true

class Providers::RegistrationsController < Devise::RegistrationsController
  before_action :create_configure_permitted_parameters, only: [:create]
  before_action :update_configure_permitted_parameters, only: [:update]

  # POST /resource
  def create
    params[:provider] = params[:provider]&.merge(client: false, provider: false)
    super
  end

  protected

  def create_configure_permitted_parameters
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

  def update_configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update) do |p|
      p.permit(
        :email,
        :password,
        :password_confirmation,
        :current_password,
        :name,
        :telephone
      )
    end
  end
end
