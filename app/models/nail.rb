class Nail < ApplicationRecord
	belongs_to :project
	
	has_many :nail_plate
	has_many :plates, through: :nail_plate

	has_many :nail_polish
	has_many :polishes, through: :nail_polish
end
