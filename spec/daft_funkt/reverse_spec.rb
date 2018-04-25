require 'daft_funkt'
RSpec.describe DaftFunkt::Reverse do
  describe 'DaftFunkt::Reverse.fn' do
    let(:reverse_string) { described_class.fn.call('foo') }
    let(:reverse_array) { described_class.fn.call([1, 2, 3, 4, 5]) }

    it 'reverses all the letters in a string' do
      expect(reverse_string).to eq('oof')
    end

    it 'reverses all the elements in an array' do
      expect(reverse_array).to eq([5, 4, 3, 2, 1])
    end
  end
end
