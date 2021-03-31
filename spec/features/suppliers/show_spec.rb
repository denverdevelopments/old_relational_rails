require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe 'I visit a supplier show page' do
    it 'then I see that supplier and their attributes' do
      kevin = Supplier.create!(name: "Kevin's Carrots", number_of_employees: 5, open_weekends: true)

      visit "/suppliers/#{kevin.id}"
      expect(page).to have_content(kevin.name)
      expect(page).to have_content(kevin.number_of_employees)
      expect(page).to have_content(kevin.open_weekends)
    end
  end
end
