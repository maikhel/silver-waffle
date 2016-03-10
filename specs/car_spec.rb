require 'car'

RSpec.describe Car do

  describe '.initialize' do
    it 'initializes new object' do
      car = Car.new
      expect(car).to be_an_instance_of(Car)
    end
    it 'initilizes x and y if arguments given' do
      car = Car.new(3,4)
      expect(car.x).to eq 3
      expect(car.y).to eq 4
    end
    it 'initializes missing parameter' do
      car = Car.new(1)
      expect(car.x).to eq 1
      expect(car.y).to be_an Integer
    end
  end

  describe '.randomX' do
    before :each do
      @car = Car.new
      @pos = @car.randomX
    end
    it 'returns Integer' do
      expect(@pos).to be_an Integer
    end
    it 'returns number smaller than MAX_X' do
      expect(@pos).to be < Area::MAX_X
    end
    it 'returns random number' do
      nums = []
      10.times { nums << @car.randomX }
      expect(nums.uniq).not_to eq []
    end
  end

  describe '.randomY' do
    before :each do
      @car = Car.new
      @pos = @car.randomY
    end
    it 'returns Integer' do
      expect(@pos).to be_an Integer
    end
    it 'returns number smaller than MAX_Y' do
      expect(@pos).to be < Area::MAX_Y
    end
    it 'returns random number' do
      nums = []
      10.times { nums << @car.randomY }
      expect(nums.uniq).not_to eq []
    end
  end


  describe '@x, @y' do
    it 'has attributes x and y' do
      car = Car.new
      expect(car.x).to be_an Integer
      expect(car.y).to be_an Integer
    end
  end

  describe '.move_x' do
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
    it 'moves car horizontally to next cell' do
      
    end
  end
  describe '.move_y' do
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

  describe '.end?' do
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