require 'rails_helper'

RSpec.describe 'Edit Supply Truck' do
  describe 'As a visitor' do
    describe 'When I visit a supply truck show page' do
      it 'I can update the supply truck' do
        @kevin = Supplier.create!(name: "Kevin's Carrots", number_of_employees: 5, open_weekends: true)
        @kevinsupplytruck1 = @kevin.supply_trucks.create!(driver_name: "Donald Eugene", number_of_daily_deliveries: 15, refrigerated: true)
        visit "/suppliers/#{@kevin.id}/supply_trucks"
        click_link "#{@kevinsupplytruck1.id}"
        expect(current_path).to eq("/supply_trucks/#{@kevinsupplytruck1.id}")
        click_link "Edit Supply Truck"
        expect(current_path).to eq("/supply_trucks/#{@kevinsupplytruck1.id}/edit")

        fill_in 'Driver Name', with: "Kevin"
        click_on 'Update Supply Truck'

        expect(current_path).to_eq("/supply_truck/#{@kevinsupplytruck.id}")
        expect(page).to have_content("Kevin")
      end
    end
  end
end
