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

end