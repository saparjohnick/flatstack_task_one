class LineProducer
  attr_reader :num_array

  def initialize(num_array)
    raise ArgumentError.new("nil input detected") if num_array.nil?

    @num_array = num_array.to_s.chars.map(&:to_i)
  end

  def find_indicies
    result_array = []
    num_array.each_with_index do |_digit, index|
      result_array.push(index) unless num_array[index] == num_array[index + 1]
    end
    result_array
  end

  def slice_array
    indicies = find_indicies
    num_array.slice!(0, indicies[0] + 1)
  end

  def sliced_array_channel
    result_array = []
    find_indicies.each do |_each|
      result_array.push(slice_array)
    end
    result_array
  end

  def formatted_answer
    result_string = ""
    sliced_array_channel.each do |array|
      result_string << "#{array.count}#{array.first}"
    end
    result_string.to_i
  end
end

# counter = LineProducer.new(111221).formatted_answer
# p counter
