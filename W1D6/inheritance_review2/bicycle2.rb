class Bicycle

  attr_reader :style, :size, :tape_colour,
              :front_shock, :rear_shock

  def initialize(args)
    @style       = args[:style]
    @size        = args[:size]
    @tape_colour = args[:tape_colour]
    @front_shock = args[:front_shock]
    @rear_shock  = args[:rear_shock]
  end

  # checking style slips down a slippery road
  def spares
    if style == :road
      {
        chain:       '10 speed',
        tire_size:   '23', # milimeters
        tape_colour: tape_colour
      }
    else
      {
        chain:       '10 speed',
        tire_size:   '2.1', # inches
        rear_shock:  rear_shock
      }
    end
  end

end

bike = Bicycle.new(style: :mountain, size: 'S', front_shock: 'Manitou', rear_shock: 'Fox')
puts bike.spares