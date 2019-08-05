class ApplicationController < ActionController::API
	  include ActionController::HttpAuthentication::Token::ControllerMethods

	def set_api_current_user
  		
  @api_current_user = User.find_by_auth_token(request.headers["token"])


  	# check with auth token if current user is there
  	if @api_current_user.blank?

  	data = {
			message: "You need to login first",
		}

		return render json: data, status: 401
  	end
  end
end
