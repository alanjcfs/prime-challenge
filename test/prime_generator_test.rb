require 'test_helper'
require File.expand_path(File.dirname(__FILE__) + '/../lib/prime_generator')
puts $LOAD_PATH

class PrimeGeneratorTest < Minitest::Spec
  # sanity
  it "the axiom is two is prime" do
    assert (2 / 2) == 1
    assert (2 % 2) == 0
  end

  it "returns an array of two primes" do
    PrimeGenerator.take(2).must_be :==, [2, 3]
  end
end
