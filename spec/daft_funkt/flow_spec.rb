require 'daft_funkt'
RSpec.describe DaftFunkt::Flow do
  let(:_Map) { DaftFunkt::Map.fn }
  let(:_Flow) { described_class.fn }
  let(:_Reverse) { DaftFunkt::Reverse.fn }
  let(:_UpCase) { DaftFunkt::Upcase.fn }

  let(:flow_upcase) do
    _Flow.call(
      _UpCase
    ).call('aaa')
  end

  let(:flow_map_upcase) do
    _Flow.call(
      _Map.call(_UpCase)
    ).call(%w(aaa bbb ccc))
  end

  let(:flow_map_upcase_reverse) do
    _Flow.call(
      _Map.call(_UpCase),
      _Map.call(_Reverse),
      _Reverse
    ).call(%w(aaz bbx ccy))
  end

  describe 'DaftFunkt::Flow.fn' do
    it 'upcases a string when passed upcase' do
      expect(flow_upcase).to eq('AAA')
    end

    it 'applies a map' do
      expect(flow_map_upcase).to eq(%w(AAA BBB CCC))
    end

    it 'should be able to flow through multiple functions' do
      expect(flow_map_upcase_reverse).to eq(%w(YCC XBB ZAA))
    end
  end
end
