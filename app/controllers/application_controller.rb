class ApplicationController < ActionController::Base

	before_action :check_authentification

	def encode_token(payload)
		JWT.encode(payload, "super duper puper secret code", "HS256")
	end

	def current_user
		if decoded_token
			user_id = decoded_token
			User.find(user_id)
		end
	end

	def decoded_token
		if auth_header
			token = auth_header.split(' ')[1]
			puts token
			begin
				# byebug
				JWT.decode(token, 'super duper puper secret code')[0]
			rescue JWT::DecodeError
				nil
			end
		end
	end

	def auth_header
		request.headers['Authorization']
		# byebug
	end

	def check_authentification
		render json: {error: "Please, log in"}, status: 401 if !logged_in?
	end

	def logged_in?
		!!current_user
	end

end
