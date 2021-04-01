require 'rails_helper'

RSpec.describe 'Restaurants & Chefs Index', type: :feature do
  describe 'As a visitor' do
    describe 'When I visit the restaurants and chefs page' do
      it 'shows links to home and supply side' do
        visit '/eats'
        click_link 'Home .'
        expect(current_path).to eq("/")
        
        click_link '. Supply Side'
        expect(current_path).to eq("/supply_side")
      end

      it 'shows link to Restaurants' do
        visit '/eats'
        click_link 'Restaurants'
        expect(current_path).to eq("/restaurants")
      end

      it 'shows link to Chefs' do
        visit '/eats'
        click_link 'Chefs'
        expect(current_path).to eq("/chefs")
      end
    end
  end
end
