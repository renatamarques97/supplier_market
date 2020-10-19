require 'rails_helper'

RSpec.describe State, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:acronym) }
  it { is_expected.to have_many(:city) }
end
