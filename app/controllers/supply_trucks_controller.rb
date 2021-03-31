class SupplyTrucksController < ApplicationController
  def index
    @supply_trucks = SupplyTruck.all
  end



  def show
    @supply_truck = SupplyTruck.find(params[:id])
  end

  def create
    supply_truck = SupplyTruck.new({
      driver_name: params[:driver_name],
      number_of_daily_deliveries: params[:number_of_daily_deliveries],
      refrigerated: params[:refrigerated]
      })
      supply_truck.save
      redirect_to '/supply_trucks'
  end

  def update
    supply_truck = SupplyTruck.find(params[:id])
    supply_truck.update({
      driver_name: params[:driver_name],
      number_of_daily_deliveries: params[:number_of_daily_deliveries],
      refrigerated: params[:refrigerated]
      })
      supply_truck.save
      redirect_to '/supply_trucks'
  end

  def destroy
    SupplyTruck.destroy(params[:id])
    redirect_to 'supply_trucks'
  end

  def edit
    @supply_truck = SupplyTruck.find(params[:id])
  end

  def new
    supplier = Supplier.find(params[:id])
    # @supply_truck = supplier.supply_trucks.new
  end

  def true
    @refrigerated_trucks = SupplyTruck.find_refrigerated_trucks
  end

end
