class RevenueCalculator
  def self.tally(stuff)
    rent_revenue = 25
    stuff.values.inject(rent_revenue) {|sum, value| sum + value}
  end
end
