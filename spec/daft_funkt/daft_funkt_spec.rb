require 'daft_funkt'

RSpec.describe DaftFunkt do
  let(:upcase_string) { described_class::UpCase.('foo') }
  let(:reverse_string) { described_class::Reverse.('foo') }
  let(:reverse_array) { described_class::Reverse.([1,2,3,4]) }


  describe '::UpCase' do
    it 'capitalizes all the letters in the string' do
      expect(upcase_string).to eq('FOO')
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
end