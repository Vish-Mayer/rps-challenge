require 'computer' 

describe Computer do
  subject(:computer) { described_class.new }

  describe '#hand' do
    it 'returns rock, paper, or scissors at random' do
      expect(Computer::HANDS).to include computer.hand
    end
  end
  
end