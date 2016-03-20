require 'computer'

describe Computer do
  subject(:computer) {described_class.new('terminator')}

  describe '#initialize' do

    it 'returns name of computer' do
      expect(computer.name).to eq 'terminator'
    end

    it 'computer randomly choose weapon' do
      allow(computer).to receive(:choice).and_return(:scissors)
      expect(computer.choice).to eq :scissors
    end
  end
end