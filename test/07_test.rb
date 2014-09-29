gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/07'

class SevenTest < Minitest::Test
  def test_heaviest_box
    boxes = [Box.new(40), Box.new(43), Box.new(59), Box.new(17)]
    assert_equal 59, Seven.new(boxes).heaviest.weight
  end
end
