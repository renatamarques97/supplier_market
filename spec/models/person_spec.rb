require 'rails_helper'

RSpec.describe Person, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name)      }
    it { is_expected.to validate_presence_of(:email)     }
    it { is_expected.to validate_presence_of(:telephone) }
    it { is_expected.to validate_presence_of(:cnpj)      }

    it { is_expected.to validate_uniqueness_of(:email).ignoring_case_sensitivity }
  end

  describe "#active_for_authentication?" do
    let(:client)   { create(:client)   }
    let(:provider) { create(:provider) }
    let(:adm)      { create(:adm)      }

    let(:client_not_actived)   { create(:client, :not_actived)   }
    let(:provider_not_actived) { create(:provider, :not_actived) }
    let(:adm_not_actived)      { create(:adm, :not_actived)      }

    context "when the person is activated, the return must be true" do
      it "activated client" do
        expect(client.active_for_authentication?).to be_truthy
      end

      it "activated provider" do
        expect(provider.active_for_authentication?).to be_truthy
      end

      it "activated admin" do
        expect(adm.active_for_authentication?).to be_truthy
      end
    end

    context "same for the others, the return must be false" do
      it "disabled client" do
        expect(client_not_actived.active_for_authentication?).to be_falsey
      end

      it "disabled provider" do
        expect(provider_not_actived.active_for_authentication?).to be_falsey
      end

      it "disabled admin" do
        expect(adm_not_actived.active_for_authentication?).to be_falsey
      end
    end
  end
end
