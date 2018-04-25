require 'daft_funkt'
RSpec.describe DaftFunkt::Includes do
  describe 'DaftFunkt::Includes.fn' do
    let(:includes_num_in_array) { described_class.fn.call(1).call([1, 2, 3, 4]) }
    let(:includes_value_in_object) { described_class.fn.call(1).call(a: 1, b: 2, c: 'asdf') }
    let(:includes_substring_in_string) { described_class.fn.call('foo').call('foobar') }

    let(:not_includes_num_in_array) { described_class.fn.call(10).call([1, 2, 3, 4]) }
    let(:not_includes_sub_array_in_array) { described_class.fn.call([1, 2, 30]).call([1, 2, 3, 4]) }
    let(:not_includes_value_in_object) { described_class.fn.call('asd').call(a: 1, b: 2, c: 'asdf') }
    let(:not_includes_substring_in_string) { described_class.fn.call('fomo').call('foobar') }

    it 'should return true for includes_num_in_array' do
      expect(includes_num_in_array).to eq(true)
    end

    it 'should return true for includes_value_in_object' do
      expect(includes_value_in_object).to eq(true)
    end

    it 'should return true for includes_substring_in_string' do
      expect(includes_substring_in_string).to eq(true)
    end

    it 'should return false for not_includes_num_in_array' do
      expect(not_includes_num_in_array).to eq(false)
    end

    it 'should return false for not_includes_sub_array_in_array' do
      expect(not_includes_sub_array_in_array).to eq(false)
    end

    it 'should return false for not_includes_value_in_object' do
      expect(not_includes_value_in_object).to eq(false)
    end

    it 'should return false for not_includes_substring_in_string' do
      expect(not_includes_substring_in_string).to eq(false)
    end
  end
end
