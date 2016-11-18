class Usuario < ApplicationRecord
	has_many :reservas
	has_many :alergias
	has_many :telefonos
end
