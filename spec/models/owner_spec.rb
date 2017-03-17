require 'rails_helper'

RSpec.describe Owner, type: :model do
  context 'model validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:phone) }
  end

  context 'model associations' do
    it { is_expected.to have_many(:dogs) }
  end

  context 'factories' do
    it { expect(build(:owner)).to be_valid }
    it { expect(build(:invalid_owner)).to_not be_valid }
  end
end
