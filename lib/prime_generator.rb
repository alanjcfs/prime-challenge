class PrimeGenerator
  attr_reader :primes, :number_of_primes

  def initialize(num)
    @primes           = [2]
    @number_of_primes = num

    self
  end

  def self.take(num=10)
    # return [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    new(num).build_primes
  end

  #
  # Increment iterator by 2 starting with 3, checking it against a list of
  # known prime numbers. If iterator is dividable by a prime number, skip
  # further check, else at the end of the list, it's likely to be the next
  # prime.
  # @return Array
  #
  def build_primes
    iterator = 3
    while primes.size < number_of_primes
      possible_prime = true

      primes.each do |prime|
        if composite_number?(iterator, prime)
          possible_prime = false
          break
        end
      end

      if possible_prime
        primes << iterator
      else
        possible_prime = true
      end

      # Skip even number
      iterator += 2
    end

    primes
  end

  #
  # @return Boolean
  #
  def composite_number?(iterator, prime)
    iterator % prime == 0
  end

end
