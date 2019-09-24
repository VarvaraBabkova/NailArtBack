class ProjectsController < ApplicationController
    skip_before_action :verify_authenticity_token

	def show
		project = Project.find(params[:id])
        render json: project,  :include => [:nails]
	end

	def create
	#byebug
		project = Project.new(project_params)
		project.save
		render json: project
	end


	private

	def project_params
        params.require(:project).permit(:user_id, :name)
    end

end
