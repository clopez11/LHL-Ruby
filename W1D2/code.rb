# Signs cost $15 per square foot.
# If a sign has two colours or fewer, add $10 for each colour.
# If a sign has more than two colours, add $15 for each colour.
# Tax is 15%.
# The boss insists that he just wants one function that he can put the dimensions and colour count in, and get the total back.

# prompt customer for how big sign is in sq foot
  # prompt customer for how many colours
print "Add square foot total: "
square_feet = gets.chomp.to_i
print "Add number of colours: "
num_colours = gets.chomp.to_i

# declare constant variables
TAX = 1.15

# function to calculate cost of sign per foot
  # sq foot total price = $15 * sq foot
  # if sign <= 2 colours, + $10 / colour
  # if sign >= 2 colours, + $15 / colour
  # multiply by 1.15% to get total with tax

def total_price(square_feet,num_colours)
  sq_feet_price = square_feet * 15
  if num_colours <= 2 
    colour_price =+ num_colours * 10
  elsif number_of_colours >= 2
    colour_price += num_colours * 15
  end
  total = (sq_feet_price + colour_price) * TAX
end

total = total_price(square_feet,num_colours)
puts "Your total price is #{total}."

# total_price(5,3) #$138.0
# total_price(5,1) #$97.75
# total_price(10,5) #$258.75
