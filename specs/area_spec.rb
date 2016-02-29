require 'area'

RSpec.describe Area do
  describe 'borders' do
    it 'has defined MAX_X border' do
      expect(Area::MAX_X).to be_an Integer
    end
    it 'has defined MAX_Y border' do
      expect(Area::MAX_Y).to be_an Integer
    end
  end

  describe '#initialze' do
    it 'counts number of cells in area' do
      area = Area.new
      expect(area.cells_num).to eq Area::MAX_Y * Area::MAX_X
    end
    it 'creates cells' do
      area = Area.new
      expect(area.cells).to be_an Array
      expect(area.cells.size).to eq area.cells_num
      expect(area.cells.first).to be_a Cell
    end
    it 'initializes cells with right coordinates' do
      area = Area.new
      expect(area.cells.first.x).to eq 0
      expect(area.cells.first.y).to eq 0

      expect(area.cells.last.x).to eq (Area::MAX_X - 1)
      expect(area.cells.last.y).to eq (Area::MAX_Y - 1)
    end
  end

end