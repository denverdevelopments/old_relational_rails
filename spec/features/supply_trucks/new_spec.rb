require 'rails_helper'

RSpec.describe 'New Supply Truck' do
  describe 'As a visitor' do
    describe 'When I visit the new supply truck form' do
      it 'I can create a new supply truck' do
        Supplier.destroy_all
        SupplyTruck.destroy_all
        @kevin = Supplier.create!(name: "Kevin's Carrots", number_of_employees: 5, open_weekends: true)
        visit "/suppliers/#{@kevin.id}/supply_trucks"
        click_link 'Create New Supply Truck'
        expect(current_path).to eq("/suppliers/#{@kevin.id}/supply_trucks/new")
        fill_in 'driver_name', with: 'Wyatt'
        click_on 'Create New Supply Truck'
        visit "/supply_trucks"
        expect(SupplyTruck.count).to eq(1)

      end
    end
  end
end
