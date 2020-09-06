# frozen_string_literal: true

class Clients::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, only: [:create]

  protected

  def configure_permitted_parameters
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
end
