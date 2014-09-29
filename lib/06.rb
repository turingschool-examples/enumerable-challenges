class Six
  def initialize(orders)
    @orders = orders
  end

  def add_up
    @orders.reject(&:cancelled).reduce(0) {|sum, order| sum + order.money }
  end
end

class Order
  attr_reader :money, :cancelled
  def initialize(money, cancelled)
    @money = money
    @cancelled = cancelled
  end
end
