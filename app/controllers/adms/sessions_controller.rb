# frozen_string_literal: true

class Adms::SessionsController < Devise::SessionsController
  def create
    redirect_to "/adms/control_panel"
  end
end
