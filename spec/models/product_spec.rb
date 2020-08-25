require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it { is_expected.to belong_to(:person) }
    # it { is_expected.to validate_presence_of(:person_id) }
  end
end
