gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class Test02 < Minitest::Test
  def test_adds_orders
      orders = [27.32, 46.55, 99.99, 103, 160]
      orders.reduce(:+)
      totals = orders.reduce(:+)
      assert_equal 436.86, totals
  end
end
