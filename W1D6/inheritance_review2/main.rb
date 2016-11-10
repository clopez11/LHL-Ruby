require_relative 'bicycle1'
require_relative 'mountain_bike'
require_relative 'road_bike'

# driver code

mountain = MountainBike.new(size: 'M', front_shock: 'Manitou', rear_shock: 'Fox')
puts mountain.inspect
puts mountain.size
puts mountain.tire_size
puts mountain.chain
puts mountain.spares
puts "moutain size: #{mountain.size}."


puts '----'

road = RoadBike.new(size: 'M', tape_colour: 'orange')
puts road.inspect
puts road.size
puts road.tape_colour
puts road.tire_size
puts road.chain
puts road.spares
puts "road size: #{road.size}."


puts '----'

bent = RecumbentBike.new(flag: 'tall and orange')
puts bent
puts bent.spares