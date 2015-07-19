class EmailDowncase

  def downcase_emails(emails_array)
    emails_array.map do |x|
      x.downcase
    end
  end


end
