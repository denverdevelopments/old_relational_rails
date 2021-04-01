require "rails_helper"

describe Supplier do

  describe "relationships" do
    @kevin = Supplier.create!(name: "Kevin's Carrots", number_of_employees: 5, open_weekends: true)
    @kevinsupplytruck1 = @kevin.supply_trucks.create!(driver_name: "Donald Eugene", number_of_daily_deliveries: 15, refrigerated: false)
    @kevinsupplytruck2 = @kevin.supply_trucks.create!(driver_name: "Carrot Carl", number_of_daily_deliveries: 20, refrigerated: false)
    it { should have_many :supply_trucks}
  end
end
