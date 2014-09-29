class Seven
  def initialize(boxes)
    @boxes = boxes
  end

  def heaviest
    @boxes.max_by { |box| box.weight }
  end
end

class Box
  attr_reader :weight
  def initialize(weight)
    @weight = weight
  end
end
