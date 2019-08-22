class Api::V1::ProblemsController < ApplicationController
	before_action :set_api_current_user
	def index
		@course_element=CourseElement.find(params[:id])
		@problems=@course_element.problems
		render 'problems/index.json.jbuilder'
	end
end
