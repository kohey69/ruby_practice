class Point
  attr_accessor :x, :y
  # protected :x=, :y=

  def initialize(x=0, y=0)
    @x, @y = x, y
  end

  def inspect
    "{#{x},#{y}}"
  end

  def +(other)
    self.class.new(x + other.x, y + other.y)
  end

  def -(other)
    self.class.new(x - other.x, y - other.y)
  end

  # def swap(other)
  #   tmp_x, tmp_y = @x, @y
  #   @x, @y = other.x, other.y
  #   other.x, other.y = tmp_x, tmp_y

  #   return self
  # end 

  def +@
    dup
  end
  
  def -@
    self.class.new(-x, -y)
  end

  def ~@
    self.class.new(-y, x)
  end

  def [](index)
    case index
    when 0 
      x
    when 1
      y
    else
      raise ArgumentError, "out of range `#{index}'"
    end
  end

  def []=(index, val)
    case index
    when 0
      self.x = val
    when 1
      self.y = val
    else
      raise ArgumentError, "out of range `#{index}'"
    end
  end
end     

# p0 = Point.new
# p1 = Point.new(1.0, 2.0)
# p [p0.x, p0.y]
# p [p1.x, p1.y]

# p0.swap(p1)
# p [p0.x, p0.y]
# p [p1.x, p1.y]

# p0.x = 10.0

# point0 = Point.new(3,6)
# point1 = Point.new(1,8)

# p point0 + point1 #=> (4,14)
# p @x

# point = Point.new(3, 6)
# p +point
# p -point
# p ~point

point = Point.new(3,6)
p point[0]
p point[1] = 2
p point[1]
p point[2]
