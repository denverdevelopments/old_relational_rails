require 'rails_helper'

RSpec.describe 'Edit Supplier' do
  describe 'As a visitor' do
    describe 'When I visit a suppliers show page' do
      it 'I can update the supplier' do
        kevin = Supplier.create!(name: "Kevin's Carrots", number_of_employees: 5, open_weekends: true)

        visit '/suppliers'
        click_link "Kevin's Carrots"
        expect(current_path).to eq("/suppliers/#{kevin.id}")
        click_link "Edit Supplier"
        expect(current_path).to eq("/suppliers/#{kevin.id}/edit")

        fill_in 'Name', with: "Kevin's New Carrots"
        click_on 'Update Supplier'

        expect(current_path).to_eq("/suppliers/#{kevin.id}")
        expect(page).to have_content("Kevin's New Carrots")
      end
    end
  end
end
