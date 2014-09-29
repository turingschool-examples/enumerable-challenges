module OrderCalc
	
	def self.order_total(data)
		data.values.reduce(:+).round(2)
	end
	

end