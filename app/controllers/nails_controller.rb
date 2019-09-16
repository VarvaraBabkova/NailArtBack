class NailsController < ApplicationController
	def index
		nails = Nail.all
        render json: nails, only: [:name, :texture],  :include => [:polishes, :plates]

	end
end
