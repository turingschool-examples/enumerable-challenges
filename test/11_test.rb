gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/11'

class ElevenTest < Minitest::Test
  def test_hash_of_staff_departments
    workers = [Staff.new("Alex", "Shipping", 5), Staff.new("Kate", "Shipping", 8), Staff.new("Greg", "HR", 7), Staff.new("Bob", "QA", 3), Staff.new("Rick", "QA", 6)]
    departments = Eleven.new(workers).salary_by_department
    assert_equal 13, departments["Shipping"]
    assert_equal 7, departments["HR"]
    assert_equal 9, departments["QA"]
  end
end
