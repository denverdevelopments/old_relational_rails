require 'rails_helper'
RSpec.describe 'Welcome Index', type: :feature do
  describe 'As a visitor' do
    describe 'When I visit welcome page' do
        it 'shows links to supply side and restaurants side' do
          visit '/'

          # expect(page).to have_selector(:css, 'a[href="localhost:3000/supply_side"]')
          click_link 'Supply Side'
          expect(current_path).to eq("/supply_side")
        end

        it 'shows links eats side' do
          visit '/'

          click_link 'Restaurants & Chefs'
          expect(current_path).to eq("/eats")
        end

    end
  end
end
