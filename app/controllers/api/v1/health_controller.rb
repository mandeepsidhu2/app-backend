class Api::V1::HealthController < ApplicationController
	def hello
		render :json => "hi world,this is elastic beanstalk"
	end
end
