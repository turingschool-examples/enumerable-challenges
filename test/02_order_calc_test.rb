gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/02_order_calc'

class OrderCalcTest < Minitest::Test

	attr_reader :data

	include OrderCalc

	def setup
		@data = {
			1 => 2.83,
			2 => 34.42,
			3 => 248.32,
			4 => 9234.23,
			5 => 0.99
		}
	end

	def test_order_calculator
		total = OrderCalc.order_total(data)
		assert_equal 9520.79, total
	end


end


# Your boss has given you a pile of orders from today to process. 
# She wants to know how much money we made today.

# You decide you'll write a program that takes each order, 
# gets the amount from each order and adds it all together.
