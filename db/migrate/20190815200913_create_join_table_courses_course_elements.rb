class CreateJoinTableCoursesCourseElements < ActiveRecord::Migration[6.0]
  def change
    create_join_table :courses, :course_elements do |t|
      # t.index [:course_id, :course_element_id]
      # t.index [:course_element_id, :course_id]
    end
  end
end
