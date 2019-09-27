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
		render json: project,  :include => [:nails]
	end

	def destroy
		#byebug
		project = Project.find(params[:id])
       	project.destroy
       	projects = Project.all
       	render json: projects

	end

	def update
		project = Project.find(params[:id])
		project.update(project_params)
		render json: project,  :include => [:nails]
	end

	private

	def project_params
        params.require(:project).permit(:user_id, :name, :img)
    end

end
