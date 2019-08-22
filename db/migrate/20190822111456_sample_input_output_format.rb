class SampleInputOutputFormat < ActiveRecord::Migration[6.0]
  def change
  	remove_column :sample_test_cases, :input
  	remove_column :sample_test_cases, :output
  	add_column :sample_test_cases, :input, :string , array: true, default: []
  	add_column :sample_test_cases, :output, :string , array: true, default: []
  end
end
