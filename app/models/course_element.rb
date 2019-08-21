class CourseElement < ApplicationRecord
	has_and_belongs_to_many :courses
	has_many :lectures
	has_many :problems
end
