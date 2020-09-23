require 'rails_helper'

RSpec.describe Adms::ControlPanelController, type: :request do
  let (:provider) { create(:provider) }

  describe "GET /index" do
    it "renders a successful response" do
      get adms_control_panel_path
      expect(response).to have_http_status(200)
    end
  end
  describe "POST /accept_provider" do
    it "renders a successful response" do
      post accept_provider_path(provider_id: provider.id)
      expect(response).to redirect_to(adms_control_panel_path)
    end
  end
  describe "POST /reject_provider" do
    it "renders a successful response" do
      post reject_provider_path(provider_id: provider.id)
      expect(response).to redirect_to(adms_control_panel_path)
    end
  end
end