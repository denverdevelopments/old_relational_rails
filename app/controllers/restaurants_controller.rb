#controllers/restaurants_controller.rb

class RestaurantsController < ApplicationController
  def create
    restaurant = Restaurant.new({
      name: params[:name],
      capacity: params[:capacity],
      has_bar: params[:has_bar]
      })
    restaurant.save
    redirect_to '/restaurants'
  end

  def chefs
    @restaurant = Restaurant.find(params[:id])
    @chefs = @restaurant.chefs
    #OR @chefs = Chef.where(restaurant_id: params[:id])
  end

  def destroy
    Restaurant.destroy(params[:id])
    @fired = Chef.where(restaurant_id: params[:id])
    @fired.destroy_all
    redirect_to '/restaurants'
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def index
    @restaurants = Restaurant.order(created_at: :desc)
  end

  def new
  end

  # def most_chefs
  #   @restaurant = Restaurant.find(params[:id])
  #   @most_chefs = Chef.group(:restaurant_id).count.order
  #   # @most = Chef.group(:restaurant_id).count.order
  #   # @restaurant = Restaurant.find(params[:id])
  #   # @chefs = @restaurant.chefs.order(:name)
  # end

  def show
    @restaurant = Restaurant.find(params[:id])
    @chefs = @restaurant.chefs
    #OR @chefs = Chef.where(restaurant_id: params[:id])
  end

  def sorted
    @restaurant = Restaurant.find(params[:id])
    @chefs = @restaurant.chefs.order(:name)
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

end
