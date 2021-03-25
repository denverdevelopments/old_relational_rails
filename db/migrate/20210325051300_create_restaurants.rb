class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :capacity
      t.boolean :has_bar

      t.timestamps
    end
  end
end
