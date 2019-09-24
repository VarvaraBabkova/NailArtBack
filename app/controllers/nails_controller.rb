class NailsController < ApplicationController
    skip_before_action :verify_authenticity_token

	skip_before_action :check_authentification

	def index
		nails = Nail.all
        render json: nails, only: [:name, :texture],  :include => [:polishes, :plates]
	end

	def show
		nail = Nail.find(params[:id])
        render json: nails, only: [:name, :texture],  :include => [:polishes, :plates]
	end

	def create
#byebug
		nail = Nail.new(nail_params)
		nail.save
		render json: nail
	end

	private def nail_params
        params.require(:nail).permit(:name, :texture, :project_id)
    end 
end
