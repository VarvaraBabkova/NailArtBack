class PolishesController < ApplicationController
	def index
		polishes = Polish.all
        render json: polishes
	end
end
