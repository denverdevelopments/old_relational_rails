require 'rails_helper'

RSpec.describe 'Edit Supply Truck' do
  describe 'As a visitor' do
    describe 'When I visit a supply truck show page' do
      it 'I can update the supply truck' do
        Supplier.destroy_all
        SupplyTruck.destroy_all
        @kevin = Supplier.create!(name: "Kevin's Carrots", number_of_employees: 5, open_weekends: true)
        @kevinsupplytruck1 = @kevin.supply_trucks.create!(driver_name: "Donald Eugene", number_of_daily_deliveries: 15, refrigerated: true)
        visit "/supply_trucks/#{@kevinsupplytruck1.id}"
        click_on "Update Supply Truck"
        expect(current_path).to eq("/supply_trucks/#{@kevinsupplytruck1.id}/edit")


        fill_in 'driver_name', with: "Kevin"
        fill_in 'number_of_daily_deliveries', with: "2"

        click_button 'Update Supply Truck'

        expect(current_path).to eq("/supply_trucks")
        expect(page).to have_content("#{@kevinsupplytruck1.id}")
      end
    end
  end
end
