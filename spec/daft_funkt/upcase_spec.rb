require 'daft_funkt'
RSpec.describe DaftFunkt::Upcase do
  describe 'DaftFunkt::Upcase.fn' do
    let(:upcase_string) do
      described_class.fn.call('foo')
    end

    it 'capitalizes all the letters in the string' do
      expect(upcase_string).to eq('FOO')
    end
  end
end
