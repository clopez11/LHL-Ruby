require 'pry'

# # Writing blocks using yield
# # Ex: Write an implementation of .select
# # Returns all items in array that match condition in the block

# # puts [1, 2, 3, 4, 5, 6].select {|number| number > 3}

# def my_select(array, &block)
#   result = []
#   array.each do |item|
#     if yield(item) # yield calls the block, passing in item
#       result << item
#     end
#   end
#   result
#   # 1. go over each item in the array
#     # 2. run the block, passing in the item
#     # 3. if the block result was true, keep track of the item
#   # 4. return the items we are keeping track of
# end

# puts my_select([1, 2, 3, 4, 5, 6]) { |num| num > 3 }
# puts "----"
# puts my_select([1, 2, 3, 4, 5, 6]) { |num| num % 2 == 0 || num == 1 }


##### LAMBDAS

def my_select(list, check)
  result = []
  list.each do |item|
    if check.call(item) # invoke the lambda, passing in item
      result << item
    end
  end
  result
end

my_check = -> (num) { num > 3} # define a lambda that is passed into my select
# alternate syntax
# my_check = lambda { |num| num > 3} # define a lambda that is passed into my select

puts my_select([1, 2, 3, 4, 5, 6], my_check)


##### PROCS

# very similar to lambdas
# google differences between procs and lambdas

