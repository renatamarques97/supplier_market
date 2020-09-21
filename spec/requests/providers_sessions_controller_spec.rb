require 'rails_helper'

RSpec.describe Providers::SessionsController, type: :request do
  describe "POST /create" do
    describe "Valid attributes" do
      let(:provider) { create(:provider) }

      it "provider successfully logged in" do
        post provider_session_path, params: { provider: { login: provider.email , password: provider.password }}
      
        expect(response).to have_http_status 200
      end
    end
  end
end
