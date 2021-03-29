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

  def sorted
    @restaurant = Restaurant.find(params[:id])
    @chefs = @restaurant.chefs.order(:name)
  end

  def destroy
    Restaurant.destroy(params[:id])
    @fired = Chef.where(restaurant_id: params[:id])
    @fired.destroy    #destroy staff Chefs
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

  # <form action="/restaurants" method="post">
  #   <input type="hidden" name="authenticity_token" value="<%= form_authenticity_token %>">
  #   <h3>Open a new Restaurant:</h3>
  #
  #   Name:
  #   <input type='text' name='restaurant[name]'/><br/>
  #
  #   Capacity:
  #   <input type='integer' capacity='restaurant[capacity]'/><br/>
  #
  #   Has a bar:
  #   <input type='boolean' has_bar='restaurant[has_bar]'/><br/>
  #   <br>
  #
  #   <input type='submit'/>
  # </form>

  def show
    @restaurant = Restaurant.find(params[:id])
    @chefs = Chef.where(restaurant_id: params[:id])
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
