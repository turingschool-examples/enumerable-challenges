gem 'minitest'
require 'minitest/autorun'
require_relative '../lib/07.rb'

class MaxWeightTest < Minitest::Test
  def test_has_find_heaviest_method
    package_weights = MaxWeight.new
    assert package_weights.respond_to?(:find_heaviest)
  end

  def test_find_heaviest
    package_weights = MaxWeight.new
    packages = [34, 33, 32, 31, 30, 35, 29, 28, 27, 26]
    assert_equal 35, package_weights.find_heaviest(packages)
  end
end