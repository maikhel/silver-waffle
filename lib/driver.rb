class Driver

  attr_reader :area, :car

  def initialize
    @area = Area.new
    @car = Car.new
  end

  def print
    "Car is on cell: [#{car.x},#{car.y}]"
  end

  def go_home!
    @car.move_x(0)
    @car.move_y(0)
  end

end