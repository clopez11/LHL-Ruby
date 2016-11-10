module Awesomeable

  def is_awesome?(years)
    return "Your car is awesome!" if years < 10
  end

end

class Vehicle

  attr_accessor :colour
  attr_reader :year, :model

  @@vehicles_created = 0

  include Awesomeable
  def initialize(year, model, colour)
    @year = year
    @model = model
    @colour = colour
    @current_speed = 0
    @@vehicles_created += 1
  end

  def speed_up(number)
    @current_speed += number 
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    puts "Let's park!"
  end

  def gas_mileage(miles, gallons)
    puts "#{miles / gallons} miles per gallons of gas."
  end

  def spray_paint(color)
    @color = color
    puts "You new #{color} paint job looks great!"
  end

  def self.vehicles_created
    @@vehicles_created
    # puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year
  end

end

class MyCar < Vehicle

  GAS_TYPE = "Diesel"

  def initialize(name, model, colour)
    super(name, model, colour)
  end

  def to_s
    "My car is a #{self.colour}, #{self.year}, #{self.model}!"
  end

end

class MyTruck < Vehicle

  DRIVE_CONTROL = "4-wheel"

  def initialize(name, model, colour)
    super(name, model, colour)
  end

  def to_s
    "My truck  is a #{self.colour}, #{self.year}, #{self.model}!"
  end

end  

# ---- driver code

# jetta = Vehicle.new
# puts jetta.inspect
# puts jetta.gas_mileage(100, 10)
# puts jetta.is_awesome?(7)

# puts '----'

# '---- Vehicle Method Lookup ----'
# puts Vehicle.ancestors

puts '----'

lumina = MyCar.new(1997, 'chevy lumina', 'white')
puts lumina.speed_up(20)
puts lumina.current_speed
puts lumina.speed_up(20)
puts lumina.current_speed
puts lumina.brake(20)
puts lumina.current_speed
puts lumina.brake(20)
puts lumina.current_speed
puts lumina.shut_down
puts lumina.gas_mileage(450, 10)
puts lumina.spray_paint("red")
puts lumina

puts '----'

puts '---- MyCar Method Lookup ----'
puts puts MyCar.ancestors

puts '---- MyTruck Method Lookup ----'
puts puts MyTruck.ancestors

puts '---- Vehicle Method Lookup ----'
puts puts Vehicle.ancestors

# puts Vehicle.vehicles_created