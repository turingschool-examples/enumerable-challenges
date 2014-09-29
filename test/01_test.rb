gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/01'

class OneTest < Minitest::Test
  def test_lowercases_emails
    emails = ["AleX@AleX.cOm", "KATE@KATEKATE.com"]
    assert_equal ["alex@alex.com", "kate@katekate.com"], One.new(emails).fix
  end
end
