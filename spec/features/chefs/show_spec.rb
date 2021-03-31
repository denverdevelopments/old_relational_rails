require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe 'I visit a chef show page' do
    it 'then I see that chef id and attributes' do

      tgik = Restaurant.create!(name: "TGI Kevin's", capacity: 220, has_bar: false)
      kevon = tgik.chefs.create!(name: "Kevon Loron", experience: 4, desserts: false)

      visit "/chefs/#{kevon.id}"
      # expect(page).to have_content(kevon.id)
      expect(page).to have_content(kevon.name)
      expect(page).to have_content(kevon.experience)
      # expect(page).to have_content(kevon.desserts)
    end
  end
end
