class AddConstraintsToProblems < ActiveRecord::Migration[6.0]
  def change
    add_column :problems, :constraints, :string , array: true, default: []
  end
end
