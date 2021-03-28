class SupplyTrucksController < ApplicationController
  def index
    @supply_trucks = SupplyTruck.all
  end

  def show
    @supply_truck = SupplyTruck.find(params[:id])
  end

end
