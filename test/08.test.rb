gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/08'

class EightTest < Minitest::Test
  def test_lightest_box
    boxes = [Box.new(40), Box.new(43), Box.new(59), Box.new(17)]
    assert_equal 17, Eight.new(boxes).lightest.weight
  end
end
