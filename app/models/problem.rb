class Problem < ApplicationRecord
	has_many :sample_test_cases
	belongs_to :course_element
end
