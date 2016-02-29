class Driver

  attr_reader :area, :car

  def initialize
    @area = Area.new
    @car = Car.new
  end

  def print
    "Car is on cell: [#{car.x},#{car.y}]"
  end

end