class AddCourseIdToCourseElement < ActiveRecord::Migration[6.0]
  def change
    add_column :course_elements, :course_id, :integer
  end
end
