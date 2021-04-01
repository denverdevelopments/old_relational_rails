require 'rails_helper'

RSpec.describe 'As a Visitor' do
  it 'I can delete a supplier' do
    Supplier.destroy_all
    kevin = Supplier.create!(name: "Kevin's Carrots", number_of_employees: 5, open_weekends: true)

    visit '/suppliers'

    click_button 'Delete this Supplier'
    expect(current_path).to eq('/suppliers')
    expect(page).to_not have_content(kevin.name)
    expect(page).to_not have_button('Delete this Supplier')
  end
end
