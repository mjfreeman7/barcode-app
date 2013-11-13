class Barcode < ActiveRecord::Base
	belongs_to :job
	belongs_to :workstation
	validates_presence_of :barcode_number
end
