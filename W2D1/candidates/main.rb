# This is the main entrypoint into the program
# It requires the other files/gems that it needs

# require 'pry'
# require 'byebug'
require './candidates'
require './filters'

## ---- driver code

puts find(7)
puts "---"
puts experienced?(@candidates[1])

# binding.pry

