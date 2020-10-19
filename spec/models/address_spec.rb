require 'rails_helper'

RSpec.describe Address, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it { is_expected.to validate_presence_of(:street) }
  it { is_expected.to validate_presence_of(:number) }
  it { is_expected.to validate_presence_of(:zip_code) }

  it { is_expected.to belong_to(:person) }
  it { is_expected.to belong_to(:city) }
end
