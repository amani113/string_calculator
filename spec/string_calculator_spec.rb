require './string_calculator'

RSpec.describe StringCalculator do
  describe 'add' do
    it 'returns 0 for empty strings' do
      calculator = StringCalculator.new
      expect(calculator.add('')).to eq(0)
    end

    it 'returns the number itself when a single number is provided' do
      calculator = StringCalculator.new
      expect(calculator.add('1')).to eq(1)
    end

    it 'returns the sum of numbers' do
      calculator = StringCalculator.new
      expect(calculator.add('1,2')).to eq(3)
    end

    it 'retunrs error for non integer number' do
      calculator = StringCalculator.new
      expect(calculator.add('xyz')).to eq(0)
    end

    it 'raises an exception with all negative numbers listed' do
      calculator = StringCalculator.new
      expect { calculator.add("1,-2,-3,4") }.to raise_error("Negative numbers not allowed: -2, -3")
    end

    it 'returns the sum of numbers separated by new lines' do
      calculator = StringCalculator.new
      expect(calculator.add("1\n2,3")).to eq(6)
    end
  end
end
