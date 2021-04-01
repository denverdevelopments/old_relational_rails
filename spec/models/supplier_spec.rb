require "rails_helper"

describe Supplier, type: :model do

  describe "relationships" do
    it { should have_many :supply_trucks}
  end

  describe "class methods" do
    describe "::count_trucks" do
      it "Create a test for corresponding method to count number of trucks" do
        @josie = Supplier.create!(name: "Josie's Apple Orchard", number_of_employees: 31, open_weekends: true)
        @josiesupplytruck1 = @josie.supply_trucks.create!(driver_name: "Daisy Wicks", number_of_daily_deliveries: 32, refrigerated: false)
        @josiesupplytruck2 = @josie.supply_trucks.create!(driver_name: "Kevin Kevinson", number_of_daily_deliveries: 16, refrigerated: false)

        expect(@josie.count_trucks).to eq(2)
      end
    end
  end
end
