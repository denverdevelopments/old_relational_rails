require 'rails_helper'
RSpec.describe 'Supplier Side Index', type: :feature do
  describe 'As a visitor' do
    describe 'When I visit the supply side page' do
      it 'shows links to home and eats' do
        visit '/supply_side'
        click_link 'Home'
        expect(current_path).to eq("/")
        click_link 'Restaurants & Chefs'
        expect(current_path).to eq("/eats")
      end

      it 'shows link to suppliers' do
        visit '/supply_side'
        click_link 'Supplier Index'
        expect(current_path).to eq("/suppliers")
      end

      it 'shows link to supply trucks' do
        visit '/supply_side'
        click_link 'Supply Truck Index'
        expect(current_path).to eq("/supply_trucks")
      end
    end
  end
end
