gem 'minitest'
require 'minitest/autorun'
require 'date'
require_relative '../lib/05.rb'

class TestOldContacts < Minitest::Test
  def test_has_month_old_list
    call_roster = OldContacts.new
    assert call_roster.respond_to?(:month_old)
  end

  def test_returns_30_day_call_roster_single
    call_roster = OldContacts.new
    customers = [Customer.new('Greg', Date.new(2014,8,1))]
    assert customers[0].name == call_roster.month_old(customers)
  end

  def test_returns_30_day_call_roster_multiple
    call_roster = OldContacts.new
    customers = [Customer.new('Greg', Date.new(2014,8,1)),
                 Customer.new('David', Date.new(2014,9,28)),
                 Customer.new('Kate', Date.new(2014,1,1))]
    assert_equal customers[0].name, call_roster.month_old(customers)
  end
end
