class CreateWorkstations < ActiveRecord::Migration
  def change
    create_table :workstations do |t|

      t.timestamps
    end
  end
end
