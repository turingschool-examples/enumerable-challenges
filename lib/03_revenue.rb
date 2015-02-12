module OrderCalc
	
	def self.order_total(baseline_revenue, data)
		data.values.reduce(baseline_revenue,:+).round(2)
	end
end