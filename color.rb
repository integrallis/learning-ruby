class Color
  attr_accessor :r, :g, :b, :name

  def initialize(name, r, g, b)
    @name, @r, @g, @b = name, r, g, b
  end

  def to_s
    name
  end
end
