class UsersController < ApplicationController
	before_action :set_api_current_user,only: [:logout]
	def login
		validator = GoogleIDToken::Validator.new
		@id_token = request.headers["token"]
		required_audience=JWT.decode(@id_token, nil, false)[0]['aud']
 		payload = validator.check(@id_token, required_audience, required_audience)
		@user=User.check(payload)
		puts(@user)
		return render json: @user, status: 200
	end

	def logout
		@api_current_user.remove_auth_token_validity
	end
end
