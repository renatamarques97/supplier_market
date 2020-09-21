require 'rails_helper'

RSpec.describe Clients::RegistrationsController, type: :request do
  describe "POST /create" do
    describe "Valid attributes" do
      let(:valid_attributes)   { attributes_for(:client) }

      it "do create a new Client" do
        expect {
          post client_registration_path, params: { client: valid_attributes }
        }.to change(Person, :count).by(1)
      end
    end

    describe "Invalid attributes" do
      let(:invalid_attributes) { attributes_for(:client, name: nil) }

      it "does not create a new Client" do
        expect {
          post client_registration_path, params: { client: invalid_attributes }
        }.to change(Person, :count).by(0)
      end
    end
  end
end
