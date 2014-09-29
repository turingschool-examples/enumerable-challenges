gem 'minitest'
require 'minitest/autorun'
require_relative '../lib/06.rb'

class OrderTotalsTest < Minitest::Test
  def test_has_calculate_total_method
    totaler = OrderTotals.new
    assert totaler.respond_to?(:calculate_total)
  end


  def test_reject_cancelled_orders
    totaler = OrderTotals.new
    orders =  [{:status=>true, :total=>10},
               {:status=>false, :total=>10},
               {:status=>false, :total=>5},
               {:status=>true, :total=>5}]

    assert totaler.reject_cancelled_orders(orders) == [10, 5]
  end

  def test_add_totals
    totaler = OrderTotals.new
    orders =  [10, 5]

    assert_equal 15, totaler.calculate_total(orders)
  end

  def test_integration
    totaler = OrderTotals.new
    orders =  [{:status=>true, :total=>10},
               {:status=>false, :total=>10},
               {:status=>false, :total=>5},
               {:status=>true, :total=>5}]

    values = totaler.reject_cancelled_orders(orders)
    assert_equal 15, totaler.calculate_total(values)
  end
end