require 'daft_funkt'

RSpec.describe DaftFunkt do
  let(:upcase_string) { described_class::UpCase.('foo') }

  describe '::UpCase' do
    it 'capitalizes all the letters in the string' do
      expect(upcase_string).to eq('FOO')
    end
  end
end