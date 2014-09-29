gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/09'

class NineTest < Minitest::Test
  def test_lightest_and_heaviest_box
    boxes = [Box.new(40), Box.new(43), Box.new(59), Box.new(17)]
    minmax = Nine.new(boxes).lightest_and_heaviest.collect(&:weight)
    assert_equal [17, 59], minmax
  end
end
