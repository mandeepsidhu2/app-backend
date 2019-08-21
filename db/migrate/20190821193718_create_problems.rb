class CreateProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :problems do |t|
      t.string :heading
      t.text :statement
      t.string :note
      t.string :input_format
      t.string :output_format

      t.timestamps
    end
  end
end
