require 'rails_helper'

RSpec.describe 'As a Visitor' do
  it 'I can delete a restaurant' do
    Restaurant.destroy_all
    tgik = Restaurant.create!(name: "TGI Kevin's", capacity: 220, has_bar: false)

    visit '/restaurants'

    click_button 'Delete this Restaurant'
    expect(current_path).to eq('/restaurants')
    expect(page).to_not have_content(tgik.name)
    expect(page).to_not have_button('Delete this Restaurant')
  end
end
