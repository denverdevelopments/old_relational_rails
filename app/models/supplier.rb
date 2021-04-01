class Supplier < ApplicationRecord
  has_many :supply_trucks, dependent: :destroy

  def count_trucks
    supply_trucks.count
  end
end
