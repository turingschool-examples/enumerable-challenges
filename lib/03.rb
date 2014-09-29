class Three
  def initialize(orders)
    @orders = orders
  end

  def add_up(amount = 25)
    @orders.reduce(amount) {|sum, order| sum + order.money }
  end
end

class Order
  attr_reader :money
  def initialize(money)
    @money = money
  end
end
