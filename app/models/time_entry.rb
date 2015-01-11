class TimeEntry < AccountEntry
	belongs_to :employee

	def cost 
		time * 34
	end
end
