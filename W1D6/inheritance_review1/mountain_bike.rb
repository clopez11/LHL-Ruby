require_relative 'Bicycle'

class MountainBike < Bicycle

  MAX_REAR_GEAR = 6
  MAX_FRONT_GEAR = 3

  attr_reader :front_gear, :rear_gear
  attr_accessor :braking

  def initialize
    super('off road')
    @braking = false
    @front_gear = 1
    @rear_gear = 1
  end

  def gear
    (front_gear - 1) * MAX_REAR_GEAR + rear_gear
  end

  def stop
    self.braking = true
  end

  def increase_rear_gear
    @rear_gear += 1 if rear_gear < MAX_REAR_GEAR
  end

  def decrease_rear_gear
    @rear_gear -= 1 if rear_gear > 1
  end

  # def increase_front_gear
  #   @front_gear += 1 if front_gear < MAX_FRONT_GEAR
  # end

  # def decrease_front_gear
  #   @front_gear -= if front_gear > 1
  # end

  def self.repair_kit
    ['wrench', 'pliers', 'pump']
  end

end

# driver code
# :: scope resolution operator. This can be useful if you need to access the value of the constant from another class.

orange = MountainBike.new
# puts orange.terrain
# puts orange.propulsion
# puts orange.braking = true
orange.increase_rear_gear
orange.increase_rear_gear
orange.increase_rear_gear

puts '----'
puts orange.gear
puts '----'

orange.decrease_rear_gear
orange.decrease_rear_gear
orange.decrease_rear_gear
puts orange.gear

# puts MountainBike::MAX_REAR_GEAR
# puts MountainBike.repair_kit

