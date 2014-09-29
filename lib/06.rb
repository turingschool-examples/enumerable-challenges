class Order
  attr_reader :date, :status, :value
  def initialize(date_ordered, status='active', value)
    @date = date_ordered
    @status = status
    @value = value
  end
end
