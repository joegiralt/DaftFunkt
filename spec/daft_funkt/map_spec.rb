require 'daft_funkt'
RSpec.describe DaftFunkt::Map do
  let(:map_upcase) { described_class.fn.call(DaftFunkt::Upcase.fn).call(%w(a b C)) }
  let(:map_reverse) { described_class.fn.call(DaftFunkt::Reverse.fn).call(%w(foo bar baz)) }

  describe 'DaftFunkt::Map.fn' do
    it 'returns a new array elements all upcased' do
      expect(map_upcase).to eq(%w(A B C))
    end

    it 'applies reverse to each string in the Array' do
      expect(map_reverse).to eq(%w(oof rab zab))
    end
  end
end
