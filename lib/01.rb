class One
  def initialize(emails)
    @emails = emails
  end

  def fix
    # @emails.collect { |email| email.downcase }
    @emails.collect(&:downcase)
  end
end
