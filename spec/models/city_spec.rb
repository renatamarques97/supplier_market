require 'rails_helper'

RSpec.describe City, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to belong_to(:state) }
  it { is_expected.to have_many(:address) }
end
