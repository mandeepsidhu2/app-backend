json.array! @course_elements do |course_element|
	json.id course_element.id
	json.title course_element.title
	json.description course_element.description
end