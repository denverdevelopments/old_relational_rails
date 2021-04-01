require 'rails_helper'

RSpec.describe 'Restaurant Index' do
  before :each do
    @tgik = Restaurant.create!(name: "TGI Kevin's", capacity: 220, has_bar: false)
    @wicks = Restaurant.create!(name: "Wicks Saloon n' Honkytonk", capacity: 95, has_bar: true)
    @miller = Restaurant.create!(name: "Miller Brew Pub", capacity: 48, has_bar: true)
  end

  it 'shows all restaurants' do
    visit '/restaurants'
    expect(page).to have_content(@tgik.name)
    expect(page).to have_content(@wicks.name)
    expect(page).to have_content(@miller.name)
    expect(page).to have_content(@tgik.created_at)
    expect(page).to have_content(@wicks.created_at)
    expect(page).to have_content(@miller.created_at)
  end
end
