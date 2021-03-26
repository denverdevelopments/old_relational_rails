#controllers/restaurants_controller.rb

class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = restaurant.find(params[:id])
  end

  def update
    restaurant = Restaurant.find(params[:id])
    restaurant.update({
      name: params[:restaurant][:name],
      years_worked: params[:restaurant][:years_worked],
      can_close: params[:restaurant][:can_close]
      })
    restaurant.save
    redirect_to "/restaurants/#{restaurant.id}"
  end

end
