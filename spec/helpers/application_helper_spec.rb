require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '.translate_model_attribute' do
    it { expect(ta(Dog, :name)).to eq('Nome') }
  end
end
