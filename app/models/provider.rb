class Provider < Person
  has_many :products, as: :person, dependent: :destroy

  after_create :send_email_registration_confirmation

  private

  def send_email_registration_confirmation
    mail = ProviderMailer.with(provider: self).waiting_administrator_confirmation

    begin
      mail.deliver_now!
    rescue Exception => e
      p e.message
    end
  end
end
