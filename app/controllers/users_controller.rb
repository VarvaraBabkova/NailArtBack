class UsersController < ApplicationController

	skip_before_action :check_authentification, only: [:create]

	def create 
        
        user = User.create(user_params)
        render json: user
        
    end

    def show 
        
        user = User.find(params[:id])
        render json: user,  :include => [:projects]
        
    end

    private def user_params
        params.require(:user).permit(:username, :password)
    end 
end
