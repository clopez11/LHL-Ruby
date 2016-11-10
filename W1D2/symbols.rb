require 'benchmark'

# str = Benchmark.measure do
#   10_000_000.times do
#     "test"
#   end
# end.total

# sym = Benchmark.measure do
#   10_000_000.times do
#     :test
#   end
# end.total

# puts "String: " + str.to_s
# puts "Symbol: " + sym.to_s
# puts

a = "test".split(//)
b = "test".split(//)
e = true

number = (a.length > b.length) ? a.length : b.length

number.times do |index|
  if a[index] == b[index]
    puts "#{a[index]} is equal to #{b[index]}"
  else
    puts "#{a[index]} is not equal to #{b[index]}"
    e = false
    break
  end
end

puts "#{a.join} equal to #{b.join}: #{e}"

str = Benchmark.measure do
  10_000_000.times do
    "test" == "test"
  end
end.total

sym = Benchmark.measure do
  10_000_000.times do
    :test == :test
  end
end.total

puts "String: " + str.to_s
puts "Symbol: " + sym.to_s
puts