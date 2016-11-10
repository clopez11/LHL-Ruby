require 'pry'

@provinces = {
  ON: 'Ontario',
  BC: 'British Columbia',
  AB: 'Alberta',
  QC: 'Quebec',
  NS: 'Nova Scotia'
}

# Task 1: Insert two new items in Hash
@provinces[:NF] = "Newfoundland"
@provinces[:SK] = "Saskatchewan"

# Task 2: Create new hash called cities, similar to format above
@cities = {
  SK: ["Regina"],
  ON: ["Toronto", "Hamilton", "Ottawa"],
  BC: ["Vancouver", "Victoria"],
  AB: ["Calgary", "Edmonton"],
  QC: ["Montreal", "Quebec"],
  NS: ["Halifax"],
  NF: ["Appleton", "Badger"]
}

# Task 3: Define a method that takes provinces code and returns details of provinces and list of cities
  # eg: 'ON is for Ontario. It has 3 major cities: Toronto, Hamilton, Ottawa'
def describe_prov(code)
  puts "Welcome to information resource. Please add province code: "
  code = gets.chomp.to_sym.upcase
  puts "#{code} is for #{@provinces[code]}. It has #{@cities[code].count} major cities: #{@cities[code]}."
end

# Task 4: Create new hash called taxes
@taxes = {
  ON: 13,
  BC: 8,
  AB: 7,
  QC: 5,
  NS: 11,
  NF: 12,
  SK: 9
}

# Task 5: Calculate tax depending on code, round to 2 decimal place and output the tax rate, tax amount and total amount
def calculate_tax(code, dollar_amount)
  puts "Add province code to calculate the tax: "
  code = gets.chomp.to_sym.upcase
  puts "#{code} has a tax rate of #{@taxes[code]}."
  
  puts "Add dollar amount spent in $"
  dollar_amount = gets.chomp.to_f
  puts "Total spent: $#{dollar_amount}."

  tax = @taxes[code] * 0.01
  tax_total = dollar_amount * tax
  puts "Your tax total is $#{tax_total}"

  total_amount = dollar_amount + tax_total
  puts "Your total amount is $#{total_amount}"
end

# Task 6: Take an input and return state code where city is located
# def find_prov_for_city(city)
#   @cities.each_value do |province| 
#     if province.include?(city)
#       return @cities.key(province)
#       binding.prys
#     end
#   end
# end

# def find_state_for_city(cities)
#   puts "Add city to find province: "
#   cities = gets.chomp
#   province = ""
#   @cities.each do |city| 
#     if city.include?(cities)
#       province << @cities.key(city)
#     end
#   end
#   binding.pry
#   puts province
# end

def find_prov_for_city(city)
  puts "Add city to find province: "
  city = gets.chomp
  prov_code = ""
  @cities.each do |key,value|
    if value.include?(city)
      prov_code = key.to_s   
      puts "#{city} is in #{state_code}."
      break
    end
  end
end

puts describe_prov(:ON)
puts calculate_tax(:ON, 20) #$22.60
puts find_prov_for_city("Toronto") #ON
puts find_prov_for_city("Victoria") #BC

