require 'pry'

ROMAN_NUMBERS = {
  1000 => "M",  
   500 => "D",  
   100 => "C",  
    50 => "L",   
    10 => "X",   
     5 => "V",  
     1 => "I"
}

def to_roman(num)
  roman = ""
  ROMAN_NUMBERS.each do |value, letter|
    roman << letter * (num / value)
    num = num % value
  end 
  return roman
end

# Drive code... this should print out trues.
 
puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
puts to_roman(476) == "CDLXXVI" 

# I   1
# V   5
# X   10
# L   50
# C   100
# D   500
# M   1000

# puts "My totally sweet testing script"
# puts ""
# puts "input | expected | actual"
# puts "------|----------|-------"
# puts "4     | IV       | #{to_roman(4)}"
# puts "9     | IX       | #{to_roman(9)}"
# puts "13    | XIII     | #{to_roman(13)}"
# puts "1453  | MCDLIII  | #{to_roman(1453)}"
# puts "1646  | MDCXLVI  | #{to_roman(1646)}"

# Arabic      Roman
#      4         IV
#      9         IX
#     14        XIV
#     44       XLIV
#    944     CMXLIV

# TODO: what other cases could you add to ensure your to_roman method is working?