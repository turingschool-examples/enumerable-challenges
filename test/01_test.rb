gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/first_challenge'

def setup


end

class FirstTest < Minitest::Test
  attr_reader :array_of_capital_emails, :array_of_downcase_emails
  def setup
    @array_of_capital_emails = ["ARAnnon@jumpstartlab.com",
                           "pinaLevItsky@jumpstartlab.com",
                       "cnroh@jumpstarTLAb.com"]
    @array_of_downcase_emails = ["arannon@jumpstartlab.com",
                           "pinalevitsky@jumpstartlab.com",
                       "cnroh@jumpstartlab.com"]
  end


  def test_first_test
    email_downcase = EmailDowncase.new
    assert_equal array_of_downcase_emails, email_downcase.downcase_emails(array_of_capital_emails)
  end


end
