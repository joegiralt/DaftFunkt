require 'daft_funkt'

RSpec.describe DaftFunkt do

  let(:map_upcase) {described_class::Map.(described_class::UpCase).(['a', 'b', 'C'])}
  let(:map_reverse) {described_class::Map.(described_class::Reverse).(['foo', 'bar', 'baz'])}

  let(:reverse_string) { described_class::Reverse.('foo') }
  let(:reverse_array) { described_class::Reverse.([1,2,3,4]) }

  let(:upcase_string) { described_class::UpCase.('foo') }

  describe '::Map' do
    it 'applies upcase to each string in the Array' do
      expect(map_upcase).to eq(['A', 'B', 'C'])
    end

    it 'applies reverse to each string in the Array' do
      expect(map_reverse).to eq(['oof', 'rab', 'zab'])
    end
  end

  describe '::Reverse' do
    it 'reverses all the letters in the string' do
      expect(reverse_string).to eq('oof')
    end

    it 'reverses all the elements in the array' do
      expect(reverse_array).to eq([4,3,2,1])
    end
  end

  describe '::UpCase' do
    it 'capitalizes all the letters in the string' do
      expect(upcase_string).to eq('FOO')
    end
  end
end