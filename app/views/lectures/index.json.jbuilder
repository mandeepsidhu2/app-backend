json.array! @lectures do |lecture|
	json.id lecture.id
	json.title lecture.title
	json.video_link lecture.video_link
end