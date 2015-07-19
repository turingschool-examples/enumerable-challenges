class RevenueCalculator

  def self.tally(orders)
    @sum = 0

    orders.map do |order|
      if order.cancelled == false
        @sum += order.amount
      end
    end

    rent_revenue = 25
    @sum += rent_revenue
  end
end

class Order
  attr_reader :amount, :cancelled

  def initialize(amount)
    @amount = amount
    @cancelled = false
  end

  def cancel
    @cancelled = true
  end
end
