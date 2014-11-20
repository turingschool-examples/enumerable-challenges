gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class Test01 < Minitest::Test
  def test_downcase_emails
    emails = ["JohnDoe@gmail.com", "jane@GMAIL.com", "DaN@hoTmail.com"]
    emails.map! {|email| email.downcase }

    assert_equal ["johndoe@gmail.com", "jane@gmail.com", "dan@hotmail.com"], emails
  end
end
