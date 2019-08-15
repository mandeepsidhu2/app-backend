class Api::V1::LectureController < ApplicationController
	before_action :set_api_current_user
	def index
		@course_element=CourseElement.find(params[:id])
		@lectures=@course_element.lectures
		render 'lectures/index.json.jbuilder'
	end
end
