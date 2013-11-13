module ApplicationHelper
	def status_as_string(boolean)
		boolean ? 'Complete' : 'In progress'
	end
	def percentage_true(list)
		@count = 0
		list.each do |job|
			@count = @count + 1 if job.status
		end
		return (@count * 100 / list.count)
	end
	def number_true(list)
		@count = 0
		list.each do |job|
			@count = @count + 1 if job.status
		end
		return @count
	end
	def number_false(list)
		@count = 0
		list.each do |job|
			@count = @count + 1 if !job.status
		end
		return @count
	end
	def sortable(column, title = nil)
	    title ||= column.titleize
	    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
	    link_to title, :sort => column, :direction => direction
	end
end
