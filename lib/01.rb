class EmailCleaner
  def make_lowercase(list)
    list.map { |name| name.downcase }
  end
end