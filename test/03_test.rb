gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class Test03 < Minitest::Test
  def test_add_orders_with_baseline_revenue
    orders = [27.32, 46.55, 99.99, 103, 160]
    baseline = 25
    total = orders.reduce(baseline, :+)
    assert_equal 461.86, total
  end

end
