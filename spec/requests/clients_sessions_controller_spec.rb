require 'rails_helper'

RSpec.describe Clients::SessionsController, type: :request do
  describe "POST /create" do
    describe "Valid attributes" do
      let(:client) { create(:client) }

      it "client successfully logged in" do
        post client_session_path, params: { client: { login: client.email , password: client.password }}
      
        expect(response).to have_http_status 200
      end
    end
  end
end
