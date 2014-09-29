gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/03_revenue'

class RevenueTest < Minitest::Test

	attr_reader :data, :baseline_revenue

	include OrderCalc

	def setup
		@data = {
			1 => 2.83,
			2 => 34.42,
			3 => 248.32,
			4 => 9234.23,
			5 => 0.99
		}
		@baseline_revenue = 25
	end

	def test_adds_baseline_revenue_to_order_total
		total = OrderCalc.order_total(baseline_revenue, data)

		assert_equal 9545.79, total
	end

end







#Pleased with your new revenue calculating algorithm, 
#your boss comes in to remind you that we rent out some space 
#in the warehouse to a lima bean granola start-up down the street.

#They pay $25 a day and that amount should be added to our daily revenue. 
#They're growing quickly, so she doesn't know how long they'll continue renting. 
#She'd like it if your Ruby can account for any baseline revenue.