require 'rails_helper'

RSpec.describe 'Supplier Index' do
  before :each do
    @kevin = Supplier.create!(name: "Kevin's Carrots", number_of_employees: 5, open_weekends: true)
    @wes = Supplier.create!(name: "The Hog Farm", number_of_employees: 5, open_weekends: false)
    @josie = Supplier.create!(name: "Josie's Apple Orchard", number_of_employees: 31, open_weekends: true)
  end

  it 'shows all suppliers' do
    visit '/suppliers'
    expect(page).to have_content(@kevin.name)
    expect(page).to have_content(@wes.name)
    expect(page).to have_content(@josie.name)
    expect(page).to have_content(@kevin.created_at)
    expect(page).to have_content(@wes.created_at)
    expect(page).to have_content(@josie.created_at)

  end
end
