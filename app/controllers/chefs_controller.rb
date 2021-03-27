#controllers/chefs_controller.rb

class ChefsController < ApplicationController
  def index
    @chefs = Chef.all
  end

  def show
    @chef = Chef.find(params[:id])
  end

  def edit
    @chef = Chef.find(params[:id])
  end

  def update
    chef = Chef.find(params[:id])
    chef.update({
      name: params[:chef][:name],
      experience: params[:chef][:experience],
      can_close: params[:chef][:can_close]
      })
    chef.save
    redirect_to "/chefs/#{chef.id}"
  end


end
