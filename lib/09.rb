class Nine
  def initialize(boxes)
    @boxes = boxes
  end

  def lightest_and_heaviest
    @boxes.minmax_by { |box| box.weight }
  end
end

class Box
  attr_reader :weight
  def initialize(weight)
    @weight = weight
  end
end
