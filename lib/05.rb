class Five
  def initialize(clients)
    @clients = clients
  end

  def first_lapsed
    @clients.first { |client| (Date.today - client.last_purchase).to_i > 30 }
  end
end

class Client
  attr_reader :last_purchase
  def initialize(last_purchase)
    @last_purchase = last_purchase
  end
end
