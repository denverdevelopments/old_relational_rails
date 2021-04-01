class SupplyTruck < ApplicationRecord
  belongs_to :supplier

  def self.find_refrigerated_trucks
    where(refrigerated: true)
  end

end
