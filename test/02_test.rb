gem 'minitest'
require 'minitest/autorun'
require_relative '../lib/02.rb'

class OrderTotalsTest < Minitest::Test
  def test_has_calculate_total_method
    totaler = OrderTotals.new
    assert totaler.respond_to?(:calculate_total)
  end

  def test_add_totals
    totaler = OrderTotals.new
    orders = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    assert_equal 55, totaler.calculate_total(orders)
  end
end