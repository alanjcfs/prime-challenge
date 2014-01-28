require_relative 'prime_generator'

class MultiplicationTable
  attr_reader :prime_numbers
  def self.generate(num=10)
    new(num).generate
  end

  def initialize(num)
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
end
