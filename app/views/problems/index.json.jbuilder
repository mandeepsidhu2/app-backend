json.array! @problems do |problem|
	json.id problem.id
	json.heading problem.heading
	json.heading problem.statement
	json.note problem.note
	json.input_format problem.input_format
	json.output_format problem.output_format

	json.sample_test_cases problem.sample_test_cases do |sample_test_case|
		json.partial! 'problems/sample_test_case',sample_test_case:sample_test_case
		
	end
end