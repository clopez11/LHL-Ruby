require_relative 'gear2'

class Wheel

  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim  = rim
    @tire = tire
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end

end

# driver code

@wheel = Wheel.new(26, 1.5)
puts "wheel circumference: #{@wheel.circumference}"

inches = Gear.new(52, 11, @wheel).gear_inches
puts "gear in inches: #{inches}"

ratio = Gear.new(52, 11, @wheel).ratio
puts "ratio: #{ratio}"