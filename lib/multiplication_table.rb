class MultiplicationTable
  attr_reader :prime_numbers
  def self.generate(num=10)
    initialize(num).generate
  end

  def initialize(num)
    @prime_numbers = PrimeGenerator.take(num)
    self
  end

  def generate
    [].tap do |column|
      column.push prime_numbers.unshift(nil)
      prime_numbers.each do |prime|
        prime
      end
    end
    prime_numbers.
  end
end
