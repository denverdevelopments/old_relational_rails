class Chef < ApplicationRecord
  belongs_to :restaurant

  def self.find_desserts
    where(desserts: true)
  end

end
