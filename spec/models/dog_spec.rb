require 'rails_helper'

RSpec.describe Dog, type: :model do
  context 'model validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:gender) }
    it { is_expected.to validate_presence_of(:castrated) }
    it { is_expected.to validate_presence_of(:breed) }
    it { is_expected.to validate_presence_of(:owner) }
  end

  context 'model associations' do
    it { is_expected.to belong_to(:breed) }
    it { is_expected.to belong_to(:owner) }
  end

  context 'factories' do
    it { expect(build(:dog)).to be_valid }
    it { expect(build(:invalid_dog)).to_not be_valid }
  end

  context 'scopes' do
    describe '.search' do
      let!(:dog) { create :dog, name: "Pitica" }

      it "search records" do
        expect(described_class.search("pitic")).to eq([dog])
        expect(described_class.search("bob")).to eq([])
      end
    end

    describe '.by_gender' do
      let!(:dog_1) { create :dog, gender: Dog.genders[:male] }
      let!(:dog_2) { create :dog, gender: Dog.genders[:female] }

      it { expect(described_class.by_gender(Dog.genders[:male])).to eq([dog_1]) }
    end

    describe '.by_onwer' do
      let!(:owner_1) { create :owner }
      let!(:dog_1) { create :dog }
      let!(:dog_2) { create :dog, owner: owner_1 }

      it { expect(described_class.by_owner(owner_1)).to eq([dog_2]) }
    end

    describe '.by_breed' do
      let!(:breed_1) { create :breed }
      let!(:breed_2) { create :breed }
      let!(:dog_1) { create :dog, breed: breed_1 }
      let!(:dog_2) { create :dog, breed: breed_2 }

      it { expect(described_class.by_breed(breed_1)).to eq([dog_1]) }
    end
  end
end
