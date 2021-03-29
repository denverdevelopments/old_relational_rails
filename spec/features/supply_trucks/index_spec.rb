require 'rails_helper'

Rspec.describe 'Supply Truck Index' do
  before :each do
    @supply1 = kevin.supply_trucks.create!(driver_name: "Donald Eugene", number_of_daily_deliveries: 15, refrigerated: true)
    @supply2 = kevin.supply_trucks.create!(driver_name: "Carrot Carl", number_of_daily_deliveries: 20, refrigerated: true)

    @supply3 = wes.supply_trucks.create!(driver_name: "John Loron", number_of_daily_deliveries: 15, refrigerated: false)
    @supply4 = wes.supply_trucks.create!(driver_name: "Big Bella", number_of_daily_deliveries: 8, refrigerated: true)
    @supply5 = es.supply_trucks.create!(driver_name: "Jacki LaClaire", number_of_daily_deliveries: 16, refrigerated: true)

    @supply6 = josie.supply_trucks.create!(driver_name: "Daisy Wicks", number_of_daily_deliveries: 32, refrigerated: false)
    @supply7 = josie.supply_trucks.create!(driver_name: "Kevin Kevinson", number_of_daily_deliveries: 16, refrigerated: false)
  end

  it 'shows all supply trucks' do
    visit '/supply_trucks'
    expect(page).to have_content(@supply1.id)
    expect(page).to have_content(@supply2.id)
    expect(page).to have_content(@supply3.id)
    expect(page).to have_content(@supply4.id)
    expect(page).to have_content(@supply5.id)
    expect(page).to have_content(@supply6.id)
    expect(page).to have_content(@supply7.id)
  end
end
