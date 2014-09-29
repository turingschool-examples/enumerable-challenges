require 'date'

class OldContacts
  def month_old(customers)
    today = Date.today
    call_list = customers.select do |customer|
      (today - customer.last_contact_date).to_i > 30
    end
  end
end

class Customer
  attr_reader :name, :last_contact_date

  def initialize(name, last_contact_date)
    @name = name
    @last_contact_date = last_contact_date
  end
end