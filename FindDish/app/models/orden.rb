class Orden < ApplicationRecord
	 has_and_belongs_to_many :usuarios
	 has_many :platillos
end