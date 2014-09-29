require_relative 'test_helper'
require_relative '../lib/challenge'
require 'date'

class ChallengeTest < Minitest::Test

  def setup
    @challenge = Challenge.new
  end

  def test_downcasing_emails
    emails = %w(barber@google.com fool@dood.com Colun@d.com)
    modified_emails = @challenge.change_email(emails)
    assert_equal emails[2].downcase, modified_emails[2]
  end

  def test_summing_of_orders
    orders = [50, 100, 150, 30]
    assert_equal 330, @challenge.order_sum(orders)
  end

  def test_baseline_revenue
    orders = [50, 100, 150, 30]
    assert_equal 355, @challenge.revenue_sum(orders)
  end

  def test_collect_inactive_clients
    clients = [
      {name: "Chris", last_order: Date.new(2014,9,3)},
      {name: "Herbert", last_order: Date.new(2014,2,3)},
      {name: "Charlie", last_order: Date.new(2014,5,3)},
      {name: "Sally", last_order: Date.new(2014,9,10)},
    ]
    assert_equal %w(Herbert Charlie), @challenge.inactive_clients(clients)
  end

  def test_collect_first_inactive_client
    clients = [
      {name: "Chris", last_order: Date.new(2014,9,3)},
      {name: "Herbert", last_order: Date.new(2014,2,3)},
      {name: "Charlie", last_order: Date.new(2014,5,3)},
      {name: "Sally", last_order: Date.new(2014,9,10)},
    ]
    assert_equal %w(Herbert), @challenge.first_inactive_client(clients)
  end

  def test_summing_of_uncancelled_orders
    orders = [
      {order: 50, cancelled: true},
      {order: 100, cancelled: false},
      {order: 150, cancelled: false},
      {order: 30, cancelled: true}
    ]
    assert_equal 250, @challenge.sum_uncancelled_orders(orders)
  end

  def test_heaviest_boxes_first
    shipments = [
      {shipment: "Food", weight: 50},
      {shipment: "Fridge", weight: 100},
      {shipment: "Computers", weight: 150},
      {shipment: "Feathers", weight: 30}
    ]
    assert_equal %w(Computers Fridge Food Feathers), @challenge.heaviest_shipments(shipments)
  end

  def test_lightest_boxes_first
    shipments = [
      {shipment: "Food", weight: 50},
      {shipment: "Fridge", weight: 100},
      {shipment: "Computers", weight: 150},
      {shipment: "Feathers", weight: 30}
    ]
    assert_equal %w(Feathers Food Fridge Computers), @challenge.lightest_shipments(shipments)
  end

  def test_lightest_and_heaviest_boxes
    shipments = [
      {shipment: "Food", weight: 50},
      {shipment: "Fridge", weight: 100},
      {shipment: "Computers", weight: 150},
      {shipment: "Feathers", weight: 30}
    ]
    assert_equal %w(Feathers Computers), @challenge.light_and_heavy_shipments(shipments)
  end

  def test_group_department
    employees = [
      {name: "Chris", department: "development"},
      {name: "Herbert", department: "development"},
      {name: "Charlie", department: "accounting"},
      {name: "Sally", department: "accounting"}
    ]
    hash = {"development" => %w(Chris Herbert), "accounting" => %w(Charlie Sally)}
    assert_equal hash, @challenge.group_by_department(employees)
  end
end
