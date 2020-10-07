class ProviderMailer < ApplicationMailer
  def waiting_administrator_confirmation
    @provider = params[:provider]
    mail to: @provider.email, subject: "Pending Confirmation - Supplier Market"
  end
end
