module LapsedCustomer

	@month = 2628000

	def self.list(data)
		people = data.values.select {|value| Time.new.to_i - value > @month}
		people.map {|value| data.key(value) }
	end
	
end