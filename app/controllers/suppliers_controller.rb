#controllers/suppliers_controller.rb

class SuppliersController < ApplicationController
  def index
     @suppliers = Supplier.order("Created_at ASC")
  end

  def show
    @supplier = Supplier.find(params[:id])
    @supply_trucks = SupplyTruck.where(supplier_id: params[:id])
  end

  def supply_trucks
    @supply_trucks = SupplyTruck.where(supplier_id: params[:id])
    @supplier = Supplier.find(params[:id])
  end

end
