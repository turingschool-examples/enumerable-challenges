gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/10'

class TenTest < Minitest::Test
  def test_hash_of_staff_departments
    workers = [Staff.new("Alex", "Shipping"), Staff.new("Kate", "Shipping"), Staff.new("Greg", "HR"), Staff.new("Bob", "QA"), Staff.new("Rick", "QA")]
    departments = Ten.new(workers).group_by_department
    assert_equal 2, departments["Shipping"].count
    assert_equal 1, departments["HR"].count
    assert_equal 2, departments["QA"].count
  end
end
