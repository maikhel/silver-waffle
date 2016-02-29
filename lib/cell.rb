class Cell

  attr_reader :x, :y, :stoppage

  def initialize(x,y)
    @x, @y = x, y if x >= 0 && y >= 0
    @stoppage = Random.rand
  end

end