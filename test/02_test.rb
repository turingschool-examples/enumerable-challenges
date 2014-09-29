gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/02'

class TwoTest < Minitest::Test
  def test_total_money
    orders = [Order.new(5.15), Order.new(6.25), Order.new(8.00)]
    assert_equal 19.40, Two.new(orders).add_up
  end
end
