require 'pry'

puts "Welcome to the guessing game!"

def generate_random_number
	rand(10) + 1
end

puts "Guess a number between (1 - 10):"

def get_input 
	gets.chomp.to_i
end

if generate_random_number == get_input
	puts "YAY"
else
	puts "Sorry, try again"
end

