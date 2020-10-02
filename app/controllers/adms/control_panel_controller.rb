class Adms::ControlPanelController < ApplicationController
  before_action :set_provider, only: [:accept_provider, :reject_provider]
 
  def index
    @people = Person.where(admin: false, provider: false, client:false)
  end

  def accept_provider
    @_provider.update(provider: true)
    redirect_to adms_control_panel_path
  end

  def reject_provider
    @_provider.destroy
    redirect_to adms_control_panel_path
  end

  private

  def set_provider
    @_provider = Person.find_by_id(params[:provider_id])
  end

end
