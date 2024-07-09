class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.length == 1
    num_array = numbers.split(/,|\n/).map(&:to_i)
    negative_numbers = num_array.select {|n| n < 0}
    unless negative_numbers.empty?
      raise "Negative numbers not allowed: #{negative_numbers.join(', ')}"
    end
    return num_array.sum
  end
end
