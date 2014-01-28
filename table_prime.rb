require_relative 'lib/multiplication_table'

NUM = 10

multiplication_table = MultiplicationTable.new(NUM)
table = multiplication_table.generate
primes = multiplication_table.prime_numbers

primes.unshift("")
puts primes.join("	|	")

table.each_with_index do |row, index|
  row.unshift(primes[index+1])
  puts row.join("	|	")
end
