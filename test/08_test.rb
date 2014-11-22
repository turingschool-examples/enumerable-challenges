gem 'minitest'
require 'minitest/autorun'
require_relative '../lib/08.rb'

class MinWeightTest < Minitest::Test
  def test_has_find_lightest_method
    package_weights = MinWeight.new
    assert package_weights.respond_to?(:find_lightest)
  end

  def test_find_lightest
    package_weights = MinWeight.new
    packages = [34, 33, 32, 31, 30, 35, 29, 28, 27, 26]
    assert_equal 26, package_weights.find_lightest(packages)
  end
end