class ProviderMailer < ApplicationMailer
  default from: 'Mercado Fornecedor <mercado.fornecedor@hotmail.com>'

  def waiting_administrator_confirmation
    @provider = params[:provider]
    mail to: @provider.email, subject: t('.subject')
  end
end
