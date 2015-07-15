class LapsedOrders
  attr_reader :last_order_date, :name

  def initialize(customers)
    @customers = customers
  end

  def lapsed
    @customers.find_all { |customer| customer.fetch(:last_order_date) >= Date.new(2014,8,29) }.map { |customer| customer[:name] }
  end
end
