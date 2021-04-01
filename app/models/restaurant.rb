class Restaurant < ApplicationRecord
  has_many :chefs, dependent: :destroy

  def count_chefs
    chefs.count 
  end

end
