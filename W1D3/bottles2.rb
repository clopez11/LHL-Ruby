# reset all variables
def reset
  @bottles = 0
  @caps = 0
  @empty_bottles = 0
  @used_caps = 0
  @remaining_empty_bottles = 0
  @remaining_caps = 0
  @new_bottles = 0
  @new_bottles_from_bottles = 0
  @new_bottles_from_caps = 0
end

#Initial bottle count from investment
def get_bottles(investment)
  @bottles = investment / 2
  @purchased = @bottles
  @total_bottles = @bottles
  # puts "You invested #{investment} dollar and bought #{@bottles} bottles."
  # puts
  @new_bottles = @bottles
end

#Exchange used bottles and caps to new bottles and show remainder.
# empty_bottles have no cap and ready for exchange, new_bottles recently rececived and have cap, remaining_empty_bottles left over bottles from before the exchange
def exchangable
  @empty_bottles = @new_bottles + @remaining_empty_bottles
  @used_caps = @new_bottles + @remaining_caps
  # puts "You now have #{@empty_bottles} empty bottles and #{@used_caps} caps to exchange."

  @from_bottles = @empty_bottles / 2
  @remaining_empty_bottles = @empty_bottles % 2

  @from_caps = @used_caps / 4
  @remaining_caps = @used_caps % 4
    
  @new_bottles_from_bottles += @from_bottles
  @new_bottles_from_caps += @from_caps
  @new_bottles = @from_bottles + @from_caps
  @total_bottles += @new_bottles

  # puts "You exchange #{@empty_bottles} empty bottles for #{@bottles} new bottles and have #{@remaining_empty_bottles} bottle(s) left over."
  # puts "You exchange #{@used_caps} caps for #{@caps} new bottles and have #{@remaining_caps} cap(s) left over."
  # puts "You have so far enjoyed #{@total_bottles} bottles of pop."
  # puts
end

#Initial Question
puts "How much would you like to invest in bottles (in dollars)?"
while user_input = gets.chomp
  case user_input
  when /^\d+$/
    reset
    investment = user_input.to_i
    get_bottles(investment)
    exchangable
    until @empty_bottles < 2 && @used_caps < 4
      exchangable
    end
  puts "With your investment of #{investment} dollars:"
  puts "You can enjoy a total of #{@total_bottles} bottles of pop."
  puts "#{@purchased} bottles of pop can be purchased."
  puts "#{@new_bottles_from_bottles} bottles of pop can be obtained via bottle recycling."
  puts "#{@new_bottles_from_caps} bottles of pop can bebtained via bottle cap recycling."
  puts "Finally, you would have #{@remaining_empty_bottles} empty bottle(s) and #{@remaining_caps} bottles cap(s) remaining."
  puts
  puts "How much would you like to invest in bottles (in dollars)?"
  else
    puts "Try again."
  end
end