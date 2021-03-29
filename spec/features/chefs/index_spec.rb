require 'rails_helper'

RSpec.describe 'Chef Index' do
  before :each do
    tgik = Restaurant.create!(name: "TGI Kevin's", capacity: 220, has_bar: false)
    wicks = Restaurant.create!(name: "Wicks Saloon n' Honkytonk", capacity: 95, has_bar: true)
    miller = Restaurant.create!(name: "Miller Brew Pub", capacity: 48, has_bar: true)

    @kevon = tgik.chefs.create!(name: "Kevon Loron", experience: 4, can_close: false)
    @rordon = tgik.chefs.create!(name: "Rordon Gamsey", experience: 3, can_close: true)
    @chulia = tgik.chefs.create!(name: "Chulia Jild", experience: 9, can_close: false)

    @earp = wicks.chefs.create!(name: "Earp Wyatt", experience: 7, can_close: false)
    @jessie = wicks.chefs.create!(name: "Jessie Holiday", experience: 2, can_close: false)

    @jacque = miller.chefs.create!(name: "Jacque Milair", experience: 6, can_close: true)
  end

  it 'shows all chefs' do
    visit '/chefs'
    expect(page).to have_content(@kevon.name)
    expect(page).to have_content(@rordon.name)
    expect(page).to have_content(@chulia.name)
    expect(page).to have_content(@earp.name)
    expect(page).to have_content(@jessie.name)
    expect(page).to have_content(@jacque.name)
  end
end
