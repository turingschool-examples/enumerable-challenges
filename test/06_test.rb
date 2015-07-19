gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sixth_challenge'

class SixthTest < Minitest::Test
  attr_reader :orders
  def setup
    @orders = [order1 = Order.new(5),
               order2 = Order.new(7),
               order3 = Order.new(8) ]
  end

  def test_sixth_challenge
    orders[0].cancel
    assert orders[0].cancelled

    assert_equal 40, RevenueCalculator.tally(orders)
  end
end
