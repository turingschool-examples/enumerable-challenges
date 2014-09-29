class Eleven
  def initialize(workers)
    @workers = workers
  end

  def salary_by_department
    salaries = {}
    departments = @workers.group_by(&:department)
    departments.each_key do |key|
      salaries[key] = departments[key].reduce(0) { |sum, staff| sum + staff.salary }
    end
    salaries
  end
end

class Staff
  attr_reader :department, :name, :salary
  def initialize(name, department, salary)
    @department = department
    @name = name
    @salary = salary
  end
end
