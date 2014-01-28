require 'test_helper'
require File.expand_path(File.dirname(__FILE__) + '/../lib/multiplication_table')

class MultiplicationTableTest < Minitest::Spec
  it "returns a 2D array" do
    MultiplicationTable.new(2).generate.must_be :==, [[4, 6], [6, 9]]
  end
end
