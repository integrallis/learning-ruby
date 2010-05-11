require 'shape'

class Circle < Shape
  attr_accessor :radius

  def initialize(x, y, radius, color)
    super(x, y, color)
    @radius = radius
  end

  def draw
    print("Drawing a Circle at:(#@x, #@y), radius #@radius and color #@color\n")
  end

  def area
    Integer(Math::PI * radius ** 2)
  end
end
