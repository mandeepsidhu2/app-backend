class CreateLectures < ActiveRecord::Migration[6.0]
  def change
    create_table :lectures do |t|
      t.string :title
      t.string :video_link
      t.integer :course_element_id

      t.timestamps
    end
  end
end
