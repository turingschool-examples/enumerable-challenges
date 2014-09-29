class ClientSpammer
  def self.absentees(clients)
    clients.select! do |client_id, order_status|
      order_status == "been_a_while"
    end
    clients.keys[0]
  end
end
