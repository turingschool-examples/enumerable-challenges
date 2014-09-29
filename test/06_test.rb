gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/06'

class SixTest < Minitest::Test
  def test_total_money
    orders = [Order.new(5.15, true), Order.new(6.25, false), Order.new(8.00, false)]
    assert_equal 14.25, Six.new(orders).add_up
  end
end
