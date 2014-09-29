class Two
  def initialize(orders)
    @orders = orders
  end

  def add_up
    @orders.reduce(0) { |sum, order| order.money + sum}
  end
end

class Order
  attr_reader :money
  def initialize(money)
    @money = money
  end
end
