class Supplier < ApplicationRecord
  has_many :supply_trucks

  def self.order_by_creation_time
    order('created_at ASC')
  end
end
