json.array! @courses do |course|
	json.id course.id
	json.title course.title
	json.image course.image
	json.description course.description
	json.created_at course.created_at
	json.updated_at course.updated_at
end