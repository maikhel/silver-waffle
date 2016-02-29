class Area
  MAX_X = 10
  MAX_Y = 10

  attr_reader :cells

  def initialize
    @cells = []
    MAX_X.times do |x|
      MAX_Y.times do |y|
        @cells << Cell.new(x,y)
      end
    end
  end

  def cells_num
    @cells.size
  end

end