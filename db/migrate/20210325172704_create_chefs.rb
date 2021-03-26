class CreateChefs < ActiveRecord::Migration[5.2]
  def change
    create_table :chefs do |t|
      t.string :name
      t.integer :years_worked
      t.boolean :can_close

      t.timestamps
    end
  end
end