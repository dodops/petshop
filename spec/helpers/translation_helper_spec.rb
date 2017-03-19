require 'rails_helper'

RSpec.describe TranslationHelper, type: :helper do
  let!(:dog) { create :dog, gender: "male", castrated: false }

  describe '.translate_model_attribute' do
    it { expect(ta(Dog, :name)).to eq('Nome') }
  end

  describe '.human_enum' do
    it { expect(human_enum(Dog, :gender, dog.gender)).to eq("Macho") }
  end

  describe '.translate_boolean' do
    it { expect(tb(dog.castrated)).to eq('Não') }
  end
end
