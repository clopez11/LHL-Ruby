require 'byebug'

puts "Enter first number (1 - 100): "
num1 = gets.chomp.to_i
puts num1
puts "Enter second number (1 - 100): "
num2 = gets.chomp.to_i
puts num2

def user_input(num1,num2)
  if num1 < num2 
    num1.upto(num2) do |num|
      fizzbuzz(num)
    end
  else num1 > num2
    num1.downto(num2) do |num|
      fizzbuzz(num)
    end
  end
end

def fizzbuzz(num)
  if num % 5 == 0 && num % 3 == 0
    puts "FizzBuzz"
  elsif num % 5 == 0
    puts "Buzz"
  elsif num % 3 == 0
    puts "Fizz"
  else
    puts num
  end
end

# byebug, breakpoint

user_input(num1,num2)

# Task 1
# Refactor (improve) this code by implementing a method (called fizzbuzz) that takes in the starting and ending number so that we can programmatically change which numbers our fizzbuzz starts and ends at, instead of the usual 1 and 100.

# Task 2
# Think about other methods that can be implemented to further refactor this code and make it more readable. Remember that readability does not necessarily mean fewer lines of code.








