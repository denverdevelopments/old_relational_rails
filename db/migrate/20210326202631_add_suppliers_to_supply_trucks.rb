class AddSuppliersToSupplyTrucks < ActiveRecord::Migration[5.2]
  def change
    add_reference :supply_trucks, :supplier, foreign_key: true
  end
end
