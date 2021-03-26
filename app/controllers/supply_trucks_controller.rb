class SupplyTrucksController < ApplicationController
  def index
    @supply_trucks = SupplyTruck.all
  end
end
