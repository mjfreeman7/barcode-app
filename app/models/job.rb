class Job < ActiveRecord::Base
	belongs_to :user
	has_many :barcodes
	validates :user_id, presence: true
	validates_presence_of :details, :barcode
	def self.search(search)
	if search
	    where('details LIKE ?', "%#{search}%")
	  else
	    scoped
	  end
	end
end
