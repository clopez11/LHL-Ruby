require 'pry'

def print_result
  result_from_block = yield
  puts result_from_block
end

# This will print out the number 9 to the console
print_result { 3 * 3 }

# Blocks can also be written using the do...end format
print_result do
  creature = "walrus"
  "I am the #{creature}!"
end

# Check this out: blocks have access to variables outside of their definition
shopping_list = [:milk, :eggs, :cheese]
print_result do
  # select one at random
  important_item = shopping_list.sample
  "I hope I don't forget #{important_item}!"
end

# As you will notice, the call to yield in the method definition is where the block is executed.

# The yield keyword specifically is the spot where the 'stuff' in the block will be performed. In Ruby, a block is basically a chunk of code that can be passed to and executed by any method. Blocks are always used with methods, which usually feed data to them (as arguments).