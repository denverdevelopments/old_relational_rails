class CreateSupplier < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.integer :number_of_employees
      t.boolean :open_weekends

      t.timestamps
    end
  end
end
