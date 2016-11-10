require 'pry'

ROMAN_MAP = {
  M: 1000,
 CM: 900,
  D: 500,
 CD: 400, 
  C: 100,
 XC: 90, 
  L: 50,
 XL: 40, 
  X: 10,
 IX: 9, 
  V: 5,
 IV: 4, 
  I: 1
}

def to_roman(input)
  roman = ""
  ROMAN_MAP.each do |letter, number|
    roman << letter.to_s * (input / number)
    input %= number
  end
  roman
end

# def to_roman(input)
#   roman = ""
#   ROMAN_MAP.each do |letter, number|
#     (input / number).times do
#       roman << letter.to_s
#       input -= number
#     end
#   end
#   roman
# end

# def to_roman(input)
#   roman = ""
#   ROMAN_MAP.each do |letter, number|
#     div, input = input.divmod(number)
#     roman << letter.to_s * div
#   end
#   roman
# end


puts to_roman(476)  #CCCCLXXVI not DLXX
puts to_roman(2016) #MMXVI
puts to_roman(1646) #MDCXXXXVI / MDCXLVI