class OrderTotals

  def reject_cancelled_orders(orders)
    values = orders.reject do |order|
      order[:status] == false
    end
    values.map do |value|
      value[:total]
    end
  end

  def calculate_total(orders)
    orders.inject do |sum, order|
      sum += order
    end
  end
end