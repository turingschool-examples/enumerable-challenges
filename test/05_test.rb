gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/05'
require 'date'

class FiveTest < Minitest::Test
  def test_first_client
    clients = [Date.new(2014, 4, 4), Date.new(2013, 4, 4), Date.new(2014, 9, 7)].collect { |date| Client.new(date) }
    assert_equal Client, Five.new(clients).first_lapsed.class
  end
end
