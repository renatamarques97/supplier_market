# frozen_string_literal: true

class Clients::RegistrationsController < Devise::RegistrationsController
  before_action :create_configure_permitted_parameters, only: [:create]
  before_action :update_configure_permitted_parameters, only: [:update]

  protected

  def create_configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |c|
      c.permit(
        :email,
        :password,
        :password_confirmation,
        :name,
        :telephone,
        :cnpj
      )
    end
  end

  def update_configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update) do |c|
      c.permit(
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
