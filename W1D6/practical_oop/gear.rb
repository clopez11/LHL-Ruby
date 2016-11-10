class Gear

  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog       = cog
    @rim       = rim
    @tire      = tire
  end

  def ratio
    chainring / cog.to_f
  end

  # def gear_inches
  #   # tire goes around rim twice for diameter
  #   ratio * (rim + (tire * 2))
  # end

  def gear_inches
    ratio * diameter
  end

  def diameter
    rim + (tire * 2)
  end

end

# Driver Code

# big = Gear.new(52,11).ratio
big = Gear.new(52,11,26,1.5).gear_inches
puts "big has a gear of #{big}"

puts "------"

# small = Gear.new(30,27).ratio
small = Gear.new(30,27,24,1.25).gear_inches
puts "small has a gear of #{small}"
