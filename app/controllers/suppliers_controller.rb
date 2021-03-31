#controllers/suppliers_controller.rb

class SuppliersController < ApplicationController
  def index
     @suppliers = Supplier.order("Created_at DESC")
  end

  def show
    @supplier = Supplier.find(params[:id])
    @supply_trucks = SupplyTruck.where(supplier_id: params[:id])
  end

  def supply_trucks
    # @supply_trucks = SupplyTruck.where(supplier_id: params[:id])
    @supplier = Supplier.find(params[:id])
    # @supply_trucks = @supplier.supply_trucks
  end

  def create
    supplier = Supplier.new({
      name: params[:name],
      number_of_employees: params[:number_of_employees],
      open_weekends: params[:open_weekends]
      })
      supplier.save
      redirect_to "/suppliers"
  end

  def new
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy
    redirect_to '/suppliers'
  end

  def edit
    @supplier = Supplier.find(params[:id])
  end

  def update
    supplier = Supplier.find(params[:id])
    supplier.update({
      name: params[:name],
      number_of_employees: params[:number_of_employees],
      open_weekends: params[:open_weekends]
      })
      supplier.save
      redirect_to "/suppliers/#{supplier.id}"
  end
end
