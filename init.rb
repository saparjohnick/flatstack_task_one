require './sequence_producer'
SequenceProducer.new(11).produce_sequence.each do |value|
  p value
end
