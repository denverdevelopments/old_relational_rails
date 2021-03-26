class CreateSupplyTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :supply_trucks do |t|
      t.string :driver_name
      t.integer :number_of_daily_deliveries
      t.boolean :refrigerated

      t.timestamps
    end
  end
end
