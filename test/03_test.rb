gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/third_challenge'

class ThirdTest < Minitest::Test
  attr_reader :orders
  def setup
    @orders = { order1: 5,
                order2: 7,
                order3: 8 }
  end

  def test_third_challenge
    assert_equal 45, RevenueCalculator.tally(orders)
  end
end
