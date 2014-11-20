gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/04'

class Test04 < Minitest::Test
  def test_if_clients_havent_ordered_in_a_month

    jeremy = Client.new("jeremy")
    jason = Client.new("jason")
    macbeth = Client.new("macbeth")

    clients = [jeremy, jason, macbeth]

    today = Time.new(2014, 9, 29)
    month_ago = Time.new(2014, 8, 29)
    order_week_ago = Order.new(Time.new(2014, 9, 24))
    order_month_ago = Order.new(Time.new(2014, 8, 23))

    jeremy.orders = [order_month_ago, order_week_ago]
    jason.orders = [order_week_ago]
    macbeth.orders = [order_month_ago]

    overdue = clients.select do |client|
      client.orders.last.date < month_ago
    end

    assert_equal [macbeth], overdue
  end
end
