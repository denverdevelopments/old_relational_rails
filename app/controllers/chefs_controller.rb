#controllers/chefs_controller.rb

class ChefsController < ApplicationController
  def create
    # binding.pry
    @restaurant = Restaurant.find(params[:id])
    chef = @restaurant.chefs.new({
      name: params[:name],
      experience: params[:experience],
      desserts: params[:desserts]
      })
      chef.save
      # redirect_to "/restaurants/#{@restaurant.id}/chefs"
      redirect_to "/chefs/#{chef.id}"
  end

  def destroy
    Chef.destroy(params[:id])
    # @fired = Chef.where(restaurant_id: params[:id])
    # @fired.destroy_all
    redirect_to '/chefs'
  end

  def edit
    @chef = Chef.find(params[:id])
  end

  def index
    @chefs = Chef.all
    # @restaurant = @chef.restaurant
  end

  def new
    @restaurant = Restaurant.find(params[:id])
  end

  def show
    @chef = Chef.find(params[:id])
    @restaurant = @chef.restaurant
    #OR @restaurant = Restaurant.find(@chef.restaurant_id)
  end

  def true
    @chefs = Chef.find_desserts
    # @chefs = Chef.find(params[:desserts] = true)
  end

  def update
    chef = Chef.find(params[:id])
    chef.update({
      name: params[:chef][:name],
      experience: params[:chef][:experience],
      desserts: params[:chef][:desserts]
      })
    chef.save
    redirect_to "/chefs/#{chef.id}"
  end

end
