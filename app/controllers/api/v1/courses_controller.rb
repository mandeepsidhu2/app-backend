class Api::V1::CoursesController < ApplicationController
	before_action :set_api_current_user
	def index
		@courses=Course.all
		render 'courses/index.json.jbuilder'
	end
end
