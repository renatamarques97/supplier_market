require 'rails_helper'

RSpec.describe Provider, type: :model do
  it { is_expected.to have_many(:products) }
end
