# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require 'byebug'
require './candidates'
require './filters'

## Your test code can go here

# puts find(7)
# puts "---"

# puts experienced?(7)
# puts experienced?(@candidates[0])

# .select, go through each item in array and check if condition is met then return to new array.
# pp qualified_candidates(@candidates)
pp ordered_by_qualifications(@candidates)

# binding.pry