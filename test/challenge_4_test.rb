gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/challenge_4.rb'
require 'date'

class TestLapsedOrders < Minitest::Test

  def customers
    [{name: "John", last_order_date: Date.new(2014,9,29)}, {name: "Jane", last_order_date: Date.new(2011,7,12)}, {name: "Jerrod", last_order_date: Date.new(2014,8,01)}]
  end

  def test_last_order
    lapsed = LapsedOrders.new(customers).lapsed
    assert_includes lapsed, 'John'
    # assert_includes lapsed, 
  end
end
