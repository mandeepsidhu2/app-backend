module Api
	module V1
		class SessionsController < ApplicationController
			before_action :set_api_current_user
			def index
				return render json:@api_current_user


			end
		end
	end
end