gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/second_challenge'

class SecondTest < Minitest::Test
  attr_reader :orders
  def setup
    @orders = { order1: 5,
                order2: 7,
                order3: 8 }
  end

  def test_second_challenge
    assert_equal 20, RevenueCalculator.tally(orders)
  end
end
