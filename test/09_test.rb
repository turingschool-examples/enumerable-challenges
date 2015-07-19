gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/ninth_challenge'

class NinthTest < Minitest::Test
  attr_reader :shipments
  def setup
    @shipments = { shipment1: 5,
                   shipment2: 9,
                   shipment3: 15,
                   shipment4: 10 }
  end

  def test_ninth_challenge
    assert_equal [[:shipment1, 5], [:shipment3, 15]], ShipmentScale.heavy_and_light(shipments)
  end
end
