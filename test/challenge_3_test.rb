gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './lib/challenge_3'

class TestBaseRev < Minitest::Test
  attr_reader :daily_rent

  def test_adding_rent
    total_revenue = Rent.new(25, [126.70])
    assert_equal 151.70, total_revenue.rev_rent
  end
end
