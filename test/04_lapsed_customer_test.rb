gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/04_lapsed_customer'


class LapsedCustomerTest < Minitest::Test

	attr_reader :data

	include LapsedCustomer

	def setup
		@data = {
			sam: Time.new(2013, 4, 01).to_i,
			travis: Time.new(2014, 9, 24).to_i,
			alex: Time.new(2014, 6, 13).to_i,
			bayendor: Time.new(2013, 9, 28).to_i
		}
	end
	
	def test_returns_lapsed_customers
		people = LapsedCustomer.list(data)

		assert_equal [:sam, :alex, :bayendor], people
	end
	
end
