class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    delimiter = /,|\n/
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = Regexp.escape(parts[0][2])
      numbers = parts[1]
    end
    num_array = numbers.split(/#{delimiter}/).map(&:to_i)
    negative_numbers = num_array.select {|n| n < 0}
    unless negative_numbers.empty?
      raise "Negative numbers not allowed: #{negative_numbers.join(', ')}"
    end
    return num_array.sum
  end
end
