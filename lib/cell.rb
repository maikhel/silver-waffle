class Cell

  attr_reader :x, :y

  def initialize(x,y)
    @x, @y = x, y if x >= 0 && y >= 0
  end

end