class PolishesController < ApplicationController
	    skip_before_action :verify_authenticity_token

	skip_before_action :check_authentification, only: [:index]

	def index
		polishes = Polish.all
        render json: polishes
	end
end
