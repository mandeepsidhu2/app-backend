class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.datetime :confirmed_at

      t.timestamps
    end
  end
end
