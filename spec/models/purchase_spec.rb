require 'rails_helper'

RSpec.describe Purchase, type: :model do
  it { is_expected.to validate_presence_of(:price) }
  it { is_expected.to validate_presence_of(:discount) }
  it { is_expected.to validate_presence_of(:final_price) }
  it { is_expected.to validate_presence_of(:shipping) }

  it { is_expected.to belong_to(:person) }
  it { is_expected.to validate_presence_of(:person_id) }
  it { is_expected.to validate_presence_of(:person_type) }
end
