class Polish < ApplicationRecord
	has_many :nail_polish
	has_many :nails, through: :nail_polish
end
