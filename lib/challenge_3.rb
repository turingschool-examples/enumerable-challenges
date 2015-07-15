class Rent
  attr_reader :daily_rent, :orders

  def initialize(baseline, orders)
    @orders = orders
    @baseline = baseline
  end

  def rev_rent
    orders.inject(@baseline) do |sum, n|
      sum + n
    end
  end
end
