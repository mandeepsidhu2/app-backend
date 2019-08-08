class AddDescriptionToCourseElement < ActiveRecord::Migration[6.0]
  def change
    add_column :course_elements, :description, :string, array: true, default: []
  end
end
