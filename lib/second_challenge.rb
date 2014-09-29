class RevenueCalculator
  def self.tally(stuff)
    stuff.values.inject(0) {|sum, value| sum + value}
  end
end
