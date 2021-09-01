require './sequence_producer'

describe "SequenceProducer" do
  context "produce sequence based on" do
    before do 
      @initial_line = 11
      @size = 2
      @expected_array = [11, 21, 1211]
    end
    it "initial line 11 and size 3" do
      result = SequenceProducer.new(@initial_line, @size).produce_sequence
      expect(result).to match_array @expected_array
    end
  end
end
