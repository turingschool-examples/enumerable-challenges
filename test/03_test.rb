gem 'minitest'
require 'minitest/autorun'
require_relative '../lib/03.rb'

class DailyRevenueTest < Minitest::Test
  def test_has_baseline_method
    revenue = DailyRevenue.new
    assert revenue.respond_to?(:baseline)
  end

  def test_calculates_baseline
    revenue = DailyRevenue.new
    daily_revenues = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    assert_equal [35, 34, 33, 32, 31, 30, 29, 28, 27, 26], revenue.baseline(daily_revenues)
  end
end