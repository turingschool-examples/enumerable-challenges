gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/06'

class Test06 < Minitest::Test
  def test_if_clients_havent_ordered_in_a_month
    today = Time.new(2014, 9, 29)

    order_today_active = Order.new(Time.new(2014, 9, 29), 'active', 20.50)
    order_today_cancelled = Order.new(Time.new(2014, 9, 29), 'cancelled', 20.50)

    order_yesterday_active = Order.new(Time.new(2014, 9, 28), 'active', 25.50)
    order_yesterday_cancelled = Order.new(Time.new(2014, 9, 28), 'cancelled', 25.50)

    orders = [order_today_active, order_today_cancelled, order_today_active, order_yesterday_active]

    active_orders = orders.reject do |order|
      order.date != today || order.status == 'cancelled'
    end

    active_values = active_orders.map {|order| order.value }

    assert_equal 41, active_values.reduce(:+)
  end
end
