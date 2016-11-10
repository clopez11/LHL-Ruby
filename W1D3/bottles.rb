# For every two empty bottles, you can get one free (full) bottle of pop
# For every four bottle caps, you can get one free (full) bottle of pop
# Each bottle of pop costs $2 to purchase

# 2 bottles = 1 pop
# 4 caps = 1 pop
# pop_cost = $2

# Task 1
# Figure out the algorithm that will calculate this. For example, given a $20 investment, the customer will get 10 bottles of pop. That gives a supply of both bottles and bottle caps that can be used to redeem for further bottles, which will then produce a further supply for recycling.

@empty_bottles = 2
@used_caps = 4
@pop_cost = 2

def calculate(investment)
  bottles = investment / @empty_bottles
  purchased_bottles = bottles
  puts "Your $#{investment} investment buys you #{purchased_bottles} bottles of pop."
  puts "Receive #{bottles} bottles of free pop from recycling empty bottles."

  caps = investment / @used_caps
  puts "Receive #{caps} bottles of free pop from recycling caps."
  puts "===="

  leftover_bottle = bottles % @empty_bottles
  leftover_caps = bottles % @used_caps
  puts "#{leftover_bottle} leftover bottle(s) to recycling"
  puts "#{leftover_caps} leftover caps(s) to recycling"
  puts "===="
end

# Task 2
# Write a REPL that will prompt the user for the amount (in dollars) that the customer is going to spend. The REPL will then calculate the total number of bottles that the customer will receive and prompt for the next customer's amount.

def ask_user
  loop do
    puts "Add amount you are spending on bottles please: $"
    input = gets.chomp
    case input
    when "0" 
      break
    else
      amount = input.to_i
      bottles = calculate(amount)
    end
  end
end

ask_user

# Task 3
# Enhance the output of your program so that once the amount has been given, it provides a breakdown of how many bottles were purchased, how many were obtained through bottle recycling, and how many were obtained through bottle cap recycling.

# Task 4
# Add to the output, so that the program will tell the customer how many bottles and bottle caps they will have left over. We have to upsell the customer on buying more pop after all!










