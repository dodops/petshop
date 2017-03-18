require 'rails_helper'

RSpec.describe Breed, type: :model do
  context 'model validations' do
    it { is_expected.to validate_presence_of(:name) }
  end

  context 'model associations' do
    it { is_expected.to have_many(:dogs) }
  end

  context 'factories' do
    it { expect(build(:breed)).to be_valid }
    it { expect(build(:invalid_breed)).to_not be_valid }
  end
end
