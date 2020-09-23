require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:quantity) }

    it { is_expected.to belong_to(:person) }
    it { is_expected.to validate_presence_of(:person_id) }
    it { is_expected.to validate_presence_of(:person_type) }
  end
end
