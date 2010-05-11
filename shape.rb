class Shape
    attr_accessor :x, :y, :color
    
    def initialize(init_x, init_y, color)
       @x, @y, @color = init_x, init_y, color
    end

    def move_to(new_x, new_y)
       @x, @y = new_x, new_y
    end
    
    def move_by(new_x, new_y)
       move_to(new_x + @x, new_y + @y)
    end
    
    def draw
      raise "generic shape can't draw itself"
    end

    def area
      raise "generic shape doesn't have a defined area"
    end
 end
 