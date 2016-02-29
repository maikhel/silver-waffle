require 'car'

RSpec.describe Car do

  describe '#initialize' do
    it 'initializes new object' do
      car = Car.new
      expect(car).to be_an_instance_of(Car)
    end
  end

  describe '#randomPosition' do
    before :each do
      car = Car.new
      @pos = car.generatePosition
    end
    it 'generates array' do
      expect(@pos).to be_an(Array)
      expect(@pos.size).to eq 2
      expect(@pos[0]).to be_an Integer
      expect(@pos[1]).to be_an Integer
    end
    it 'generates random x and y' do
      expect(@pos[0]).to be < Area::MAX_X
      expect(@pos[0]).to be >= 0
      expect(@pos[1]).to be < Area::MAX_Y
      expect(@pos[1]).to be >= 0
    end
  end

  describe '@x, @y' do
    it 'has attributes x and y' do
      car = Car.new
      expect(car.x).to be_an Integer
      expect(car.y).to be_an Integer
    end
  end

  describe 'move_x' do
    before :each do
      @car = Car.new
      @car.move_x(5)
    end
    it 'moves car to given x position' do
      expect(@car.x).to eq 5
    end
    it 'doesnt move car if given x position is less than 0' do
      expect { @car.move_x(-1) }.not_to change { @car.x }
    end
    it 'doesnt move car if given position is greater or equal MAX_X' do
      expect { @car.move_x(Area::MAX_X) }.not_to change { @car.x }
    end
  end
  describe 'move_y' do
    before :each do
      @car = Car.new
      @car.move_y(4)
    end
    it 'moves car to given y position' do
      expect(@car.y).to eq 4
    end
    it 'doesnt move car if given y position is less than 0' do
      expect { @car.move_y(-3) }.not_to change { @car.y }
    end
    it 'doesnt move car if given position is greater or equal MAX_Y' do
      expect { @car.move_y(Area::MAX_Y) }.not_to change { @car.y }
    end
  end

  describe 'end?' do
    it 'doesnt finishes if x is not 0' do
      car = Car.new
      car.move_x(4)
      car.move_y(0)
      expect(car.end?).to be false
    end
    it 'doesnt finishes if y is not 0' do
      car = Car.new
      car.move_y(3)
      car.move_x(0)
      expect(car.end?).to be false
    end
    it 'ends when both x and y are equal to 0' do
      car = Car.new
      car.move_x(0)
      car.move_y(0)
      expect(car.end?).to be true

    end
  end
end