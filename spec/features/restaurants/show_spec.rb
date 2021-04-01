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
  end
end
