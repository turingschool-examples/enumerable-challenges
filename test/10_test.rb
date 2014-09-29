#this is not finished yet!
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/tenth_challenge'

class TenthTest < Minitest::Test
  attr_reader :employees
  def setup
    @employees = { accounting: "Mary Sue",
                   sales: "Joe Bob",
                   engineering: "Rob James",
                   accounting: "Tim Joe",
                   sales: "Tad Horvath",
                   engineering: "Jane Doe" }

    @sorted_employees = { accounting: ["Mary Sue", "Tim Joe"],
                          sales: ["Joe Bob", "Tad Horvath"],
                          engineering: ["Rob James", "Jane Doe"] }
  end

  def test_tenth_challenge
    assert_equal @sorted_employees, TeamSorter.sort(employees)
  end
end
