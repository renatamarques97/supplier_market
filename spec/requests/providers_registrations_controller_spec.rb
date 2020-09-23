require 'rails_helper'

RSpec.describe Providers::RegistrationsController, type: :request do
  describe "POST /create" do
    describe "Valid attributes" do
      let(:valid_attributes)   { attributes_for(:provider) }

      it "do create a new Provider" do
        expect {
          post provider_registration_path, params: { provider: valid_attributes }
        }.to change(Person, :count).by(1)
      end
    end

    describe "Invalid attributes" do
      let(:invalid_attributes) { attributes_for(:provider, name: nil) }

      it "does not create a new Provider" do
        expect {
          post provider_registration_path, params: { provider: invalid_attributes }
        }.to change(Person, :count).by(0)
      end
    end
  end
end
