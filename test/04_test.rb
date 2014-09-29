gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/fourth_challenge'

class FourthTest < Minitest::Test
  attr_reader :clients
  def setup
    @clients = { client1: "ordered_recently",
                 client2: "been_a_while",
                 client3: "ordered_recently",
                 client4: "ordered_recently",
                 client5: "been_a_while" }
  end

  def test_fourth_challenge
    assert_equal [:client2, :client5], ClientSpammer.absentees(clients)
  end
end
