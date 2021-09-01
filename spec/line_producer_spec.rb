require './line_producer'

describe "LineProducer" do
  context "produce new line on base of" do
    before do 
      @initial_line = 11
      @first_expected_line = 21
      @second_expected_line = 1211
    end

    it "initial line 11" do
      result = LineProducer.new(@initial_line).formatted_answer
      expect(result).to be_equal(@first_expected_line)
    end

    it "another produced line 21" do
      result = LineProducer.new(@first_expected_line).formatted_answer
      expect(result).to be_equal(@second_expected_line)
    end

    it "empty line" do
      result = LineProducer.new("asd").formatted_answer
      expect{ LineProducer.new.formatted_answer }.to raise_error(ArgumentError)
    end

    it "nil line" do
      expect{ LineProducer.new(nil).formatted_answer }.to raise_error(ArgumentError)
    end
  end
end
