class AddProblemIdToSampleTestCases < ActiveRecord::Migration[6.0]
  def change
    add_column :sample_test_cases, :problem_id, :integer
  end
end
