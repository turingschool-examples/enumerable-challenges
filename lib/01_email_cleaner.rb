class EmailCleaner

	def clean(data)
		data.map { |email| email.downcase } 
	end
end