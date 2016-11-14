class Establecimiento < ApplicationRecord
  has_many :platillos , dependent: :destroy
end
