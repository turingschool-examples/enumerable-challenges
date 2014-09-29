gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/03'

class ThreeTest < Minitest::Test
  def test_total_money
    orders = [Order.new(5.15), Order.new(6.25), Order.new(8.00)]
    assert_equal 44.40, Three.new(orders).add_up
    assert_equal 39.40, Three.new(orders).add_up(20)
  end
end
