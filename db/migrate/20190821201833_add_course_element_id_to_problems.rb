class AddCourseElementIdToProblems < ActiveRecord::Migration[6.0]
  def change
    add_column :problems, :course_element_id, :integer
  end
end
