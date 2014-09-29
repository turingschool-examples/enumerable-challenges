class Ten
  def initialize(workers)
    @workers = workers
  end

  def group_by_department
    @workers.group_by(&:department)
  end
end

class Staff
  attr_reader :department, :name
  def initialize(name, department)
    @department = department
    @name = name
  end
end
