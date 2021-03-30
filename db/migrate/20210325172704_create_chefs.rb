class CreateChefs < ActiveRecord::Migration[5.2]
  def change
    create_table :chefs do |t|
      t.string :name
      t.integer :experience
      t.boolean :desserts

      t.timestamps
    end
  end
end
