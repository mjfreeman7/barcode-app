class AddNameToWorkstation < ActiveRecord::Migration
  def change
  	change_table :workstations do |t|
    	t.string :name
	end
  end
end
