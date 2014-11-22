gem 'minitest'
require 'minitest/autorun'
require_relative '../lib/01.rb'

class EmailCleanerTest < Minitest::Test
  def test_has_lowercase_method
    cleaner = EmailCleaner.new
    assert cleaner.respond_to?(:make_lowercase)
  end

  def test_makes_a_single_email_lowercase
    cleaner = EmailCleaner.new
    single_email = ['DAVID@TEST.COM']
    assert_equal ['david@test.com'], cleaner.make_lowercase(single_email)
  end

  def test_makes_a_list_lowercase
    cleaner = EmailCleaner.new
    names = %w(david kATe Konr zacH)
    assert_equal %w(david kate konr zach), cleaner.make_lowercase(names)
  end

end