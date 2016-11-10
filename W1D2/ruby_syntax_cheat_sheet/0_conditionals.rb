## Conditionals

if condition
  do_things()
elsif # in JS this is `else if`
  do_other_things()
else
  do_something_no_one_expects!
end

# Same thing as above, except note that: 
#  1. You don't need the () when calling a method that takes no parameters in ruby
#  2. If statemenet mentioned after the action to take if evaluation is true
#  3. Only good for one-liners
do_things if condition 

# Opposite / inverse of the if. Basically an `if !condition`
do_other_things unless condition