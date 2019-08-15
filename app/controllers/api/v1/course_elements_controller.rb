class Api::V1::CourseElementsController < ApplicationController
	before_action :set_api_current_user
	def index
		@course=Course.find(params[:id])
		@course_elements=@course.course_elements
		puts("course is",Course.find(params[:id]))
		render 'course_elements/index.json.jbuilder'
	end
end
