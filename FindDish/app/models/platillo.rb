class Platillo < ApplicationRecord
  belongs_to :establecimiento
  has_many :ordenes
  has_many :ingredientes
end
