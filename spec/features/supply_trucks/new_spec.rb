require 'rails_helper'

RSpec.describe 'New Supply Truck' do
  describe 'As a visitor' do
    describe 'When I visit the new supply truck form' do
      it 'I can create a new supply truck' do
        visit '/suppliers/10/supply_trucks'
        click_link 'Create New Supply Truck'
        expect(current_path).to eq('/supply_trucks/new')
        fill_in 'Driver Name', with: 'Wyatt'
        click_on 'Create New Supply Truck'
        visit '/supply_trucks'
        expect(page).to have_content('Wyatt')

      end
    end
  end
end
