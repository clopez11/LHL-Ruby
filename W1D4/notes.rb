require 'pry'

words = ["apple", "banana", "racecar", "foo"]

# .each
# reverse all the words that are longer than 3 letters.
words.each do |word|
  if word.length > 3
    puts word.reverse
  else
    puts word
  end
end

# .each
# returns a new array with the words reversed.
result = []
words.each do |word|
  result << word.reverse
end

puts result.inspect

# .map
# do example above with map
result = words.map do |word|
  word.reverse
end

puts result.inspect

# .reduce
# count the total numbers of letters in all the words in an array of strings.
total_letters = words.reduce(0) do |acc, word|
  puts "acc is: #{acc.inspect}, word is: #{word.inspect}."
  acc + word.length
end

puts total_letters

# Regex capture groups

test_string = "
(123)-456-7890
123-456-7890
123-456-7890x12
123-456-7890x123
not valid 1123-456-7890
not valid 23-456-7890
not valid 123-456-789
not valid 123-456-7890x
"

phone_numbers = test_string.scan(/^(\(?\d{3}\)?)-(\d{3})-(\d{4})x?(\d{2,3})?/)
puts phone_numbers.inspect

# /(\b|\D)(\d{3})-(\d{3})-(\d{4})x?(\d{2,3})?/





















