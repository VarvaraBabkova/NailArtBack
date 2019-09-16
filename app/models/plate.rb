class Plate < ApplicationRecord
	has_many :nail_plate
	has_many :nails, through: :nail_plate
end
