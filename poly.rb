require 'circle'
require 'rectangle'

shapes = [Circle.new(7, 11, 13, 'PC Beige'), 
          Rectangle.new(2, 3, 4, 5, 'Ruby Red')]

shapes.each do |shape|
  shape.draw
  puts shape.area
end
