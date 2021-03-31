require 'rails_helper'

RSpec.describe 'Supply Trucks Index' do
  before :each do
    @kevin = Supplier.create!(name: "Kevin's Carrots", number_of_employees: 5, open_weekends: true)
    @wes = Supplier.create!(name: "The Hog Farm", number_of_employees: 5, open_weekends: false)
    @josie = Supplier.create!(name: "Josie's Apple Orchard", number_of_employees: 31, open_weekends: true)
    @kevinsupplytruck1 = @kevin.supply_trucks.create!(driver_name: "Donald Eugene", number_of_daily_deliveries: 15, refrigerated: true)
    @kevinsupplytruck2 = @kevin.supply_trucks.create!(driver_name: "Carrot Carl", number_of_daily_deliveries: 20, refrigerated: true)

    @wessupplytruck1 = @wes.supply_trucks.create!(driver_name: "John Loron", number_of_daily_deliveries: 15, refrigerated: false)
    @wessupplytruck2 = @wes.supply_trucks.create!(driver_name: "Big Bella", number_of_daily_deliveries: 8, refrigerated: true)
    @wessupplytruck3 = @wes.supply_trucks.create!(driver_name: "Jacki LaClaire", number_of_daily_deliveries: 16, refrigerated: true)

    @josiesupplytruck1 = @josie.supply_trucks.create!(driver_name: "Daisy Wicks", number_of_daily_deliveries: 32, refrigerated: false)
    @josiesupplytruck2 = @josie.supply_trucks.create!(driver_name: "Kevin Kevinson", number_of_daily_deliveries: 16, refrigerated: false)
  end

  describe "as a user" do
    it 'shows all the supply trucks in the system' do
      visit '/supply_trucks'
      expect(page).to have_content(@kevinsupplytruck1.id)
      expect(page).to have_content(@kevinsupplytruck2.id)
      expect(page).to have_content(@wessupplytruck1.id)
      expect(page).to have_content(@wessupplytruck2.id)
      expect(page).to have_content(@wessupplytruck3.id)
      expect(page).to have_content(@josiesupplytruck1.id)
      expect(page).to have_content(@josiesupplytruck2.id)
    end
  end

  
end
