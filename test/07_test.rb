gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/seventh_challenge'

class SeventhTest < Minitest::Test
  attr_reader :shipments
  def setup
    @shipments = { shipment1: 5,
                   shipment2: 9,
                   shipment3: 15,
                   shipment4: 10 }
  end

  def test_seventh_challenge
    assert_equal [:shipment3, 15], ShipmentScale.heaviest(shipments)
  end
end
