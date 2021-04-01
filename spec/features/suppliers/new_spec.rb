require 'rails_helper'

RSpec.describe 'New Supplier' do
  describe 'As a visitor' do
    describe 'When I visit the new supplier form' do
      it 'I can create a new supplier' do
        visit '/suppliers'
        click_link 'Create New Supplier'
        expect(current_path).to eq('/suppliers/new')

        fill_in 'Name', with: 'Wyatt'
        click_on 'Create New Supplier'

        expect(current_path).to eq("/suppliers")
        expect(page).to have_content('Wyatt')
      end
    end
  end
end
