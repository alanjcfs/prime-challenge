require 'test_helper'
require File.expand_path(File.dirname(__FILE__) + '/../lib/multiplication_table')

class MultiplicationTableTest < Minitest::Spec
  it "returns a 2D array" do
    # [[nil, 2, 3],
    #  [  2, 4, 6],
    #  [  3, 6, 9]]
  end
end
