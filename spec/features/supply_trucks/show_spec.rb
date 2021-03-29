require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe 'I visit a supply truck show page' do
    it 'then I see that supply truck id and attributes' do
      kevin = Supplier.create!(name: "Kevin's Carrots", number_of_employees: 5, open_weekends: true)
      kevinsupplytruck1 = kevin.supply_trucks.create!(driver_name: "Donald Eugene", number_of_daily_deliveries: 15, refrigerated: true)

      visit "/supply_trucks/#{kevinsupplytruck1.id}"

      expect(page).to have_content(kevinsupplytruck1.id)
      expect(page).to have_content(kevinsupplytruck1.driver_name)
      expect(page).to have_content(kevinsupplytruck1.number_of_daily_deliveries)
      expect(page).to have_content(kevinsupplytruck1.refrigerated)
    end
  end
end
