#controllers/suppliers_controller.rb

class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end
end
