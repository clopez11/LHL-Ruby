require_relative 'vehicle'

class Bicycle < Vehicle

  def initialize(terrain)
    super(terrain, 'manual')
  end

end

# driver code

# cruiser = Bicycle.new('beaches')
# puts cruiser.terrain
# puts cruiser.propulsion

# puts '----'