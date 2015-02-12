gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/01_email_cleaner'

class EmailCleanerTest < Minitest::Test

	attr_reader :data

	def setup
		@data = ["gkjordandc@jumpstartlab.com", 
			"dgsansHamel@jumpstaRtlab.com", 
			"TRAVISshamel@jumpstartlab.com",
			"dgsanshamel@jumpstartLAb.com",
			"dgsanshamelSAAAM@jumpstartlab.com"
		]
	end

	def test_cleans_emails
		email_cleaner = EmailCleaner.new
		clean_emails = email_cleaner.clean(data)

		assert_equal "dgsanshamel@jumpstartlab.com", clean_emails[1]
		assert_equal "travisshamel@jumpstartlab.com", clean_emails[2]
	end

end