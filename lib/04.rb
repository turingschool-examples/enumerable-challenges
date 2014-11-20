class Client
  attr_accessor :orders
  def initialize(name)
    @name = name
    @orders = []
  end
end



class Order
  attr_reader :date
  def initialize(date_ordered)
    @date = date_ordered
  end

end
