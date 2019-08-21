class CreateSampleTestCases < ActiveRecord::Migration[6.0]
  def change
    create_table :sample_test_cases do |t|
      t.string :input
      t.string :output

      t.timestamps
    end
  end
end
