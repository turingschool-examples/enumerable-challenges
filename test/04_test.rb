gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/04'
require 'date'

class FourTest < Minitest::Test
  def test_selects_clients
    clients = [Date.new(2014, 4, 4), Date.new(2013, 4, 4), Date.new(2014, 9, 7)].collect { |date| Client.new(date) }
    assert_equal 2, Four.new(clients).lapsed.count
  end
end
