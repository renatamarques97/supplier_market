require "rails_helper"

RSpec.describe ProviderMailer, type: :mailer do
  describe "waiting_administrator_confirmation" do
    let(:mail) { ProviderMailer.waiting_administrator_confirmation }

    it "renders the headers" do
      expect(mail.subject).to eq("Waiting administrator confirmation")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
