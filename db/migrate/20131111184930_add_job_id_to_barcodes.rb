class AddJobIdToBarcodes < ActiveRecord::Migration
  def change
  	   change_table :barcodes do |t|
       	t.integer :job_id
       end
  end
end
