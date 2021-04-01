require "rails_helper"

describe SupplyTruck do
  before :each do
    @kevin = Supplier.create!(name: "Kevin's Carrots", number_of_employees: 5, open_weekends: true)
    @wes = Supplier.create!(name: "The Hog Farm", number_of_employees: 5, open_weekends: false)
    @josie = Supplier.create!(name: "Josie's Apple Orchard", number_of_employees: 31, open_weekends: true)
    @kevinsupplytruck1 = @kevin.supply_trucks.create!(driver_name: "Donald Eugene", number_of_daily_deliveries: 15, refrigerated: false)
    @kevinsupplytruck2 = @kevin.supply_trucks.create!(driver_name: "Carrot Carl", number_of_daily_deliveries: 20, refrigerated: false)

    @wessupplytruck1 = @wes.supply_trucks.create!(driver_name: "John Loron", number_of_daily_deliveries: 15, refrigerated: false)
    @wessupplytruck2 = @wes.supply_trucks.create!(driver_name: "Big Bella", number_of_daily_deliveries: 8, refrigerated: false)
    @wessupplytruck3 = @wes.supply_trucks.create!(driver_name: "Jacki LaClaire", number_of_daily_deliveries: 16, refrigerated: true)

    @josiesupplytruck1 = @josie.supply_trucks.create!(driver_name: "Daisy Wicks", number_of_daily_deliveries: 32, refrigerated: false)
    @josiesupplytruck2 = @josie.supply_trucks.create!(driver_name: "Kevin Kevinson", number_of_daily_deliveries: 16, refrigerated: false)
  end

  describe "relationships" do
    it {should belong_to :supplier}
  end

  describe "class methods" do
    describe "::find_refrigerated_trucks" do
      it "Create a test for a corresponding method to find refrigerated trucks" do
        expect(SupplyTruck.find_refrigerated_trucks).to eq(@wessupplytruck3)
      end
    end
  end

end
