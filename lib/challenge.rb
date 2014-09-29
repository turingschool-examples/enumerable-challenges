class Challenge
  def change_email(emails)
    emails.map { |email| email.downcase }
  end

  def order_sum(orders)
    orders.reduce(:+)
  end

  def revenue_sum(orders)
    orders.reduce(25, :+)
  end

  def inactive_clients(active_clients)
    last_month = Date.new(2014,8,29)
    active_clients.select do |client|
      client[:last_order] < last_month
    end.map { |client| client[:name] }
  end

  def first_inactive_client(active_clients)
    last_month = Date.new(2014,8,29)
    last_client = active_clients.detect do |client|
      client[:last_order] < last_month
    end
    [last_client[:name]]
  end

  def sum_uncancelled_orders(orders)
    orders.select! { |order| order[:cancelled] == false }
    orders.inject(0){ |sum, order| sum + order[:order] }
  end

  def heaviest_shipments(shipments)
    shipments.sort_by! { |shipment| shipment[:weight] }
    shipments.map { |shipment| shipment[:shipment] }.reverse
  end

  def lightest_shipments(shipments)
    shipments.sort_by! { |shipment| shipment[:weight] }
    shipments.map { |shipment| shipment[:shipment] }
  end

  def light_and_heavy_shipments(shipments)
    shipment = shipments.minmax_by { |shipment| shipment[:weight] }
    shipment.map { |shipment| shipment[:shipment] }
  end

  def group_by_department(employees)
    group = employees.group_by { |employee| employee[:department] }
    group.each_value
    #group.map { |key, value| values }
    #group.each_pair { |key, value| puts value[0][:name] }
  end
end
