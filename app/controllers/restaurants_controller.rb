#controllers/restaurants_controller.rb

class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @chefs = Chef.where(restaurant_id: params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    restaurant = Restaurant.find(params[:id])
    restaurant.update({
      name: params[:restaurant][:name],
      capacity: params[:restaurant][:capacity],
      has_bar: params[:restaurant][:has_bar]
      })
    restaurant.save
    redirect_to "/restaurants/#{restaurant.id}"
  end

  def chefs
    @chefs = Chef.where(restaurant_id: params[:id])
    @restaurant = Restaurant.find(params[:id])
  end
end
