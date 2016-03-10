class Car

  attr_reader :x, :y

  def initialize(x=nil,y=nil)
    @x, @y = x || randomX, y || randomY
  end

  def randomX
    Random.rand(Area::MAX_X)
  end

  def randomY
    Random.rand(Area::MAX_Y)
  end

  def move_x(where)
    @x = where if where >= 0 && where < Area::MAX_X
  end

  def move_y(where)
    @y = where if where >= 0 && where < Area::MAX_Y
  end

  def end?
    @x == 0 && @y == 0
  end

end