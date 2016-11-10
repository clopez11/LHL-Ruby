require 'pry'

def count_letters(string)
  count = {}
  characters = string.split("")
  characters.each do |letter|
    if letter == " "
      next
    elsif count.key?(letter)
      count[letter] += 1
    else
      count[letter] = 1
    end
  end
  puts count
end

count_letters("lighthouse in the house...")

# Return a hash
# {
#   'l' => 1,
#   'i' => 2,
#   'g' => 1,
#   'h' => 4,
#   't' => 2,
#   'o' => 2,
#   'u' => 2,
#   's' => 2,
#   'e' => 3,
#   'n' => 1,
#   '.' => 3
# }
