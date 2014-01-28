#!/usr/bin/env ruby
require_relative 'lib/multiplication_table'

NUM = ARGV.first || 10

multiplication_table = MultiplicationTable.new(NUM.to_i).with_formatting

multiplication_table.each do |row|
  puts row.join("	| ")
end
