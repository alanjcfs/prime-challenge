require_relative 'prime_generator'

class MultiplicationTable
  attr_reader :prime_numbers
  def initialize(num=10)
    return puts "Number must be at least 1" if num < 1
    @prime_numbers = PrimeGenerator.take(num)
    self
  end

  #
  # This is a O(N^2) algorithm.
  #
  def generate
    prime_numbers.inject([]) do |row_acc, row_prime|
      row_acc << prime_numbers.inject([]) do |col_acc, col_prime|
        col_acc << col_prime * row_prime
      end
    end
  end

  def with_formatting
    table = self.generate
    table.each_with_index do |row, index|
      row.unshift(@prime_numbers[index])
    end
    table.unshift([""] + @prime_numbers)
  end
end
