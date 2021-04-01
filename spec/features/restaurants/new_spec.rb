require 'rails_helper'

RSpec.describe 'New Restaurant' do
  describe 'As a visitor' do
    describe 'When I visit the new restaurant form' do
      it 'I can create a new restaurant' do
        visit '/restaurants'

        click_link 'OPEN a new Restaurant'
        expect(current_path).to eq('/restaurants/new')

        fill_in 'Name', with: 'Fine Diner'
        click_on 'Open Restaurant'

        expect(current_path).to eq("/restaurants")
        expect(page).to have_content('Fine Diner')
      end
    end
  end
end
