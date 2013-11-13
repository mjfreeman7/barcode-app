class AddWorkstationIdToBarcodes < ActiveRecord::Migration
  def change
  	  change_table :barcodes do |t|
       	t.integer :workstation_id
       end
  end
end
