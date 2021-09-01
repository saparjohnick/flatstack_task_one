require './line_producer'

class SequenceProducer
  attr_reader :initial_line, :size

  def initialize(initial_line, size)
    @initial_line = initial_line
    @size = size
  end

  def compute_line(initial_line)
    LineProducer.new(initial_line).formatted_answer
  end

  def produce_sequence
    result_line = [initial_line]
    initial = initial_line
    next_line = ''
    size.times do
      next_line = compute_line(initial)
      initial = next_line
      result_line.push(next_line)
    end
    result_line
  end
end
