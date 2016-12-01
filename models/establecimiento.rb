class Establecimiento < ApplicationRecord
  has_many :platillos , dependent: :destroy
  has_many :reservas

end
