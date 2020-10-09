require "rails_helper"

RSpec.describe ProviderMailer, type: :mailer do
  describe "waiting_administrator_confirmation" do
    let!(:provider) { create(:provider) }
    let!(:mail)     { ProviderMailer.with(provider: provider).waiting_administrator_confirmation }

    it "renders the headers" do
      expect(mail.subject).to eq("Mercado Fornecedor - Cadastro Realizado")
      expect(mail.to).to eq([provider.email])
      expect(mail.from).to eq(["mercado.fornecedor@hotmail.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Cadastro Realizado no Mercado Fornecedor")
    end
  end

end
