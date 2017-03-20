require 'rails_helper'

RSpec.feature "Filter Results", type: :feature do
  describe 'home page' do
    let!(:dog_1) { create :dog, name: 'Bob', gender: 'male', castrated: true}
    let!(:dog_2) { create :dog, name: 'Lucia', gender: 'female', castrated: false}

    context 'when a user visit the home page' do
      it 'sees a list of all dogs' do
        visit '/'

        expect(page).to have_content(dog_1.name)
        expect(page).to have_content(dog_2.name)
      end

      it 'can filter and search that list' do
        visit '/'

        element = find(:css, "input[id$='search']")
        fill_in element[:name], with: 'Bob'
        select 'Macho', from: 'by_gender'
        select 'Sim', from: 'neutering_state'

        click_on 'Pesquisar'

        expect(page).to have_content(dog_1.name)
        expect(page).to_not have_content(dog_2.name)
      end
    end
  end
end
