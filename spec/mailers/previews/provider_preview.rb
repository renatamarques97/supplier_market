# Preview all emails at http://localhost:3000/rails/mailers/provider
class ProviderPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/provider/waiting_administrator_confirmation
  def waiting_administrator_confirmation
    ProviderMailer.waiting_administrator_confirmation
  end

end
