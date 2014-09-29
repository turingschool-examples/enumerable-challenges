class OrderTotals
  def calculate_total(orders)
    orders.inject do |sum, order|
      sum += order
    end
  end
end