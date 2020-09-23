require 'rails_helper'

RSpec.describe Client, type: :model do
  it { is_expected.to have_many(:purchases) }
end
