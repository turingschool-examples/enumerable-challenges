class Eight
  def initialize(boxes)
    @boxes = boxes
  end

  def lightest
    @boxes.min_by { |box| box.weight }
  end
end

class Box
  attr_reader :weight
  def initialize(weight)
    @weight = weight
  end
end
