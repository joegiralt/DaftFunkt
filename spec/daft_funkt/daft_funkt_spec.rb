require 'daft_funkt'

RSpec.describe DaftFunkt do

  let(:_Map) {described_class::Map}
  let(:_Flow) {described_class::Flow}
  let(:_Reverse) {described_class::Reverse}
  let(:_UpCase) {described_class::UpCase}

  let(:flow_upcase) do 
    _Flow.(
      _UpCase
    ).('aaa')
  end

  let(:flow_map_upcase) {
    _Flow.(
      _Map.(_UpCase)
    ).(['aaa', 'bbb', 'ccc'])
  }

  let(:flow_map_upcase_reverse) {
    _Flow.(
      _Map.(_UpCase),
      _Map.(_Reverse),
      _Reverse
    ).(['aaz', 'bbx', 'ccy'])
  }

  let(:map_upcase) { described_class::Map.(described_class::UpCase).(['a', 'b', 'C'])}
  let(:map_reverse) { described_class::Map.(described_class::Reverse).(['foo', 'bar', 'baz'])}

  let(:reverse_string) { described_class::Reverse.('foo') }
  let(:reverse_array) { described_class::Reverse.([1,2,3,4]) }

  let(:upcase_string) { described_class::UpCase.('foo') }

  describe '::Flow' do 
    it 'upcases a string' do
      expect(flow_upcase).to eq('AAA')
    end
    
    it 'applies a map' do
      expect(flow_map_upcase).to eq(['AAA', 'BBB', 'CCC'])
    end

    it 'should be able to flow through multiple functions' do
      expect(flow_map_upcase_reverse).to eq(["YCC", "XBB", "ZAA"])
    end
  end

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