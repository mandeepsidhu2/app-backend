class InputOutputFormat < ActiveRecord::Migration[6.0]
  def change
  	remove_column :problems, :input_format
  	remove_column :problems, :output_format
  	add_column :problems, :input_format, :string , array: true, default: []
  	add_column :problems, :output_format, :string , array: true, default: []

  end
end
