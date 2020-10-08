class ProviderPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/provider/waiting_administrator_confirmation
  def waiting_administrator_confirmation
    provider = Provider.find_by_id(params[:id])

    provider = Provider.new(name: "Example", email: "example@email.com") unless provider
    ProviderMailer.with(provider: provider).waiting_administrator_confirmation
  end

end
