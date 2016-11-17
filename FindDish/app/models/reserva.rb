class Reserva < ApplicationRecord
	has_many :usuarios
	has_many :establecimientos 
end
