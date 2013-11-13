class CreateBarcodes < ActiveRecord::Migration
  def change
    create_table :barcodes do |t|
      t.string :barcode_number

      t.timestamps
    end
  end
end
