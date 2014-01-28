require 'test_helper'
require File.expand_path(File.dirname(__FILE__) + '/../lib/prime_generator')

class PrimeGeneratorTest < Minitest::Spec
  # sanity
  it "the axiom is two is prime" do
    assert (2 / 2) == 1
    assert (2 % 2) == 0
  end

  it "returns an array of two primes" do
    PrimeGenerator.take(2).must_be :==, [2, 3]
  end

  it "returns an array of five primes for take(5)" do
    PrimeGenerator.take(5).must_be :==, [2, 3, 5, 7, 11]
  end

  describe "composite number check" do
    before do
      @prime_generator = PrimeGenerator.new(5)
    end

    it "composite_number? returns true when dividable by prime" do
      @prime_generator.composite_number?(10, 5).must_equal true
    end
  end
end
