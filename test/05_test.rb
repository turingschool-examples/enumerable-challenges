gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/fifth_challenge'

class FifthTest < Minitest::Test
  attr_reader :clients
  def setup
    @clients = { client1: "ordered_recently",
                 client2: "been_a_while",
                 client3: "ordered_recently",
                 client4: "ordered_recently",
                 client5: "been_a_while" }
  end

  def test_fifth_challenge
    assert_equal :client2, ClientSpammer.absentees(clients)
  end
end
