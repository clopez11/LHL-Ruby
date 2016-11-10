require 'pry'

require_relative 'coffee_shop'
require_relative 'beverage'
require_relative 'treat'

## Driver code

# coffee_shop.rb
hastings = CoffeeShop.new("Hastings Drive")
# puts hastings.inspect 

# beverage.rb
canadiana = Beverage.new("Canadiana", 111, 8)
hot_chocolate = Beverage.new("Hot Chocolate", 222, 7, true)
puts canadiana.inspect
puts hot_chocolate.inspect

# treat.rb
macaroons = Treat.new("Macadamia", 100, true)
puts macaroons.inspect

hastings.add_item(canadiana)
hastings.add_item(hot_chocolate)
puts hastings.inspect 

puts "All items available at #{hastings.name}."
hastings.items.each do |item|
  puts item.name
end

puts "Purchasing items."
# hastings.purchase("Canadiana")
hastings.purchase("Hot Chocolate")
puts hastings.inspect















