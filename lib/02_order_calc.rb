module OrderCalc
	
	def self.order_total(data)
		data.values.reduce(0,:+).round(2)
	end
	

end