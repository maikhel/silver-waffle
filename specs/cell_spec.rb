require 'cell'

RSpec.describe Cell do
  describe '#initialize' do
    it 'sets x and y coordinates' do
      cell = Cell.new(2,3)
      expect(cell.x).to eq 2
      expect(cell.y).to eq 3
    end
    it 'doesnt set x and y for arguments less than 0' do
      cell = Cell.new(-2, -3)
      expect(cell.x).to be nil
      expect(cell.y).to be nil
    end
  end
end