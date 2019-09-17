class AuthsController < ApplicationController

    skip_before_action :verify_authenticity_token
    skip_before_action :check_authentification, only: [:create]

 	def create
 		user = User.find_by(username: params[:username])
 		if user && user.authenticate(params[:password])
 			render json: {username: user.username, token: encode_token("#{user.id}")}
 		else
 			render json: {error: "Invalid username or password"}
 		end
 		
 	end

 	private def user_params
        params.permit(:username, :password)
    end 

end
