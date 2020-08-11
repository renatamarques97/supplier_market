class HomeController < ApplicationController
  def index
  end

  def check_logged
    if current_client
      render json: current_client 
    elsif current_provider
      render json: current_provider
    elsif current_adm
      render json: current_adm
    end
  end
end
