require 'circle'
require 'color'

beige = Color.new("beige", 100, 150, 255)
my_circle = Circle.new(7, 11, 13, beige)

puts my_circle.draw
