require_relative 'vehicle'

class Boat < Vehicle

  def initialize(propulsion)
    super('water', propulsion)
  end

end

# driver code

# puts Boat.superclass

# speed_boat = Boat.new('internal_combustion')
# puts speed_boat.terrain
# puts speed_boat.propulsion

# puts '----'

# steam_boat = Boat.new('steam')
# puts steam_boat.display_vehicle(steam_boat)

