require 'rails_helper'

RSpec.describe 'New Chef' do
  describe 'As a visitor' do
    describe 'When I visit the new chef form' do
      it 'I can create a new chef' do
        Chef.destroy_all
        Restaurant.destroy_all
        @tgik = Restaurant.create!(name: "TGI Kevin's", capacity: 220, has_bar: false)

        visit "/restaurants/#{@tgik.id}/chefs"
        click_link '. HIRE a New Chef'
        expect(current_path).to eq("/restaurants/#{@kevin.id}/chefs/new")
        fill_in 'name', with: 'Joe'
        click_on 'Hire a Chef'
        visit "/chefs"
        expect(Chef.count).to eq(1)
      end
    end
  end
end
