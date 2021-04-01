require 'rails_helper'

describe Restaurant, type: :model do
  describe 'relationships' do
    it { should have_many :chefs }
  end

  describe "class methods" do
    describe "find desserts" do
      it "finds desserts with value true" do
        wicks = Restaurant.create!(name: "Wicks Saloon n' Honkytonk", capacity: 95, has_bar: true)

        wyatt = wicks.chefs.create!(name: "Earp Wyatt", experience: 7, desserts: true)
        holiday = wicks.chefs.create!(name: "Jessie Holiday", experience: 2, desserts: false)

        expect(Chef.find_desserts).to eq([wyatt])
      end
    end

    describe "count chefs" do
      it "counts chefs at a restaurant" do
        wicks = Restaurant.create!(name: "Wicks Saloon n' Honkytonk", capacity: 95, has_bar: true)

        wyatt = wicks.chefs.create!(name: "Earp Wyatt", experience: 7, desserts: true)
        holiday = wicks.chefs.create!(name: "Jessie Holiday", experience: 2, desserts: false)

        expect(wicks.count_chefs).to eq(2)
      end
    end

  end

end
