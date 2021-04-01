require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe 'I visit a restaurant show page' do
    it 'then I see that restaurant and attributes' do
      tgik = Restaurant.create!(name: "TGI Kevin's", capacity: 220, has_bar: false)

      visit "/restaurants/#{tgik.id}"
      expect(page).to have_content(tgik.name)
      expect(page).to have_content(tgik.id)
      expect(page).to have_content(tgik.capacity)
    end

    it 'I see a link to update' do
      tgik = Restaurant.create!(name: "TGI Kevin's", capacity: 220, has_bar: false)

      visit "/restaurants/#{tgik.id}"
      click_link 'Update Restaurant'
      expect(current_path).to eq("/restaurants/#{tgik.id}/edit")
    end

      # expect(page).to have_link(". . see chefs", href: "/restaurants/#{tgik.id}/chefs")
      # expect(page).to have_link("Update Restaurant", href: "/restaurants/#{tgik.id}/edit")
      #
      # visit '/'
      # click_link 'Restaurants & Chefs'
      # expect(current_path).to eq("/eats")
  end
end
