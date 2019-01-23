class Leg < ApplicationRecord
  has_many :monsters

  def capacity
    (self.weight * 1.5)
  end
end
