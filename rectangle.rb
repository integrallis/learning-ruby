require 'shape'

class Rectangle < Shape
  attr_accessor :width, :height

  def initialize(x, y, width, height, color)
    super(x, y, color)
    @width, @height = width, height
  end

  def draw
    print("Drawing a Rectangle at:(", @x, ",", @y,"), width ", @width, ", height ", @height, "\n")
  end

  def area
    @width * @height
  end
end
