require 'json_web_token'
class ApplicationController < ActionController::API
	  include ActionController::HttpAuthentication::Token::ControllerMethods


	def set_api_current_user
		header=request.headers["token"]
		begin
		 @decoded = JsonWebToken.decode(header)
		 @api_current_user = User.find(@decoded[:user_id])
		 rescue ActiveRecord::RecordNotFound => e
		report "User not found in records: #{e}"
      render json: { errors: e.message }, status: :unauthorized
	end
	 rescue JWT::DecodeError => e
	 	report "Jwt token expired: #{e}"
      render json: { errors: e.message }, status: :unauthorized
    end

	
end
