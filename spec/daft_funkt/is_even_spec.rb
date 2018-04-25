require 'daft_funkt'
RSpec.describe DaftFunkt::IsEven do
  describe 'DaftFunkt::IsEven.fn' do
    let(:is_even_number) { described_class.fn.call(0) }
    let(:is_odd_number) { described_class.fn.call(5) }

    it 'returns true for even integers' do
      expect(is_even_number).to eq(true)
    end

    it 'returns false for odd integers' do
      expect(is_odd_number).to eq(false)
    end
  end
end
