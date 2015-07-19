gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/eigth_challenge'

class EigthTest < Minitest::Test
  attr_reader :shipments
  def setup
    @shipments = { shipment1: 5,
                   shipment2: 9,
                   shipment3: 15,
                   shipment4: 10 }
  end

  def test_eigth_challenge
    assert_equal [:shipment1, 5], ShipmentScale.lightest(shipments)
  end
end
