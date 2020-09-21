class Adms::ControlPanelController < ApplicationController
  def index
    @people = Person.where(admin: false, provider: false, client:false)
  end

  def accept_provider
    provider_id = params[:provider_id]

    provider = Person.find(provider_id)

    provider.update(provider: true)
    redirect_to "/adms/control_panel"
  end

  def reject_provider
    provider_id = params[:provider_id]

    provider = Person.find(provider_id)

    provider.destroy
    redirect_to "/adms/control_panel"
  end


end
