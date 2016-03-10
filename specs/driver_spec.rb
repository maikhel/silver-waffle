require 'driver'

RSpec.describe Driver do

  describe ".initialize" do
    before(:each) { @driver = Driver.new }
    it 'creates Area' do
      expect(@driver.area).to be_an Area
    end
    it 'creates Car' do
      expect(@driver.car).to be_a Car
    end
  end

  describe ".print" do
    it 'prints current position of car' do
      driver = Driver.new
      expect(driver.print).to eq "Car is on cell: [#{driver.car.x},#{driver.car.y}]"
    end
  end

  describe '.go_home!' do
    it 'moves car to cell [0,0]' do
      driver = Driver.new
      driver.go_home!
      expect(driver.car.end?).to eq true
    end
  end
end