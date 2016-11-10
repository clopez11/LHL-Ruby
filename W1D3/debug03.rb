# require 'pry'

def sum(list)
  sum = 0
  list.each do |ele|
    sum += ele
  end
  sum
end

list1 = [16,21,31,42,55]

# 1. The following should return 165 instead of an error
puts sum(list1)
# Answer is the scope of sum = 0, since it was inside the code block the sum kept on resetting back to 0 instead of adding to the sum

# 2. How would you refactor it using an enumerable method other than each? Examples of enumerables: map, select, inject, reject, detect.

def sum(list)
  sum = 0
  list.map do |item| 
    sum += item
  end
  sum
end

def sum(list)
  sum = 0
  list.select {|item| sum += item}
  sum
end


