class Vehicle

  attr_reader :terrain, :propulsion

  def initialize(terrain, propulsion)
    @terrain = terrain
    @propulsion = propulsion
  end

  def display_vehicle(vehicle)
    raise ArgumentError, 'vehicle parameter must be a Vehicle' unless vehicle.is_a?(Vehicle)
    puts "The vehicle can travel on #{vehicle.terrain} and is propelled by #{vehicle.propulsion}."
  end

end

# driver code
# steam_train = Vehicle.new('rails', 'steam')
# puts steam_train.terrain
# puts steam_train.propulsion

# puts "----"

# skateboard = Vehicle.new('road', 'manual')
# puts skateboard.terrain
# puts skateboard.propulsion

# puts '----'

# puts Vehicle.superclass

# class = template, recipe
# instance variable = version of class, dish
# ie. Dog = class (sparky embodies the idea of a dog)
# Class == Type (define types of things)
# Instances == Type of class

# Notice that the .new class method now requires the two #initialize parameters to be passed into it. Under the hood, .new passes each parameter it receives along to the #initialize method of the new instance.

