class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.string :details
      t.string :comments
      t.string :assign_user
      t.string :importance
      t.string :barcode
      t.string :station
      t.string :status

      t.timestamps
    end
  end
end
