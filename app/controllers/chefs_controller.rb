#controllers/chefs_controller.rb

class ChefsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:id])
    chef = @restaurant.chefs.new({
      name: params[:name],
      experience: params[:experience],
      desserts: params[:desserts]
      })
      chef.save
      redirect_to "/chefs/#{chef.id}"
  end

  def destroy
    Chef.destroy(params[:id])
    redirect_to '/chefs'
  end

  def edit
    @chef = Chef.find(params[:id])
  end

  def index
    @chefs = Chef.all
  end

  def new
    @restaurant = Restaurant.find(params[:id])
  end

  def show
    @chef = Chef.find(params[:id])
    @restaurant = @chef.restaurant
  end

  def true
    @chefs = Chef.find_desserts
    render(:index)  ## Re-use index.html.erb
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
