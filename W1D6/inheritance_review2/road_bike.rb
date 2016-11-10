require_relative 'bicycle1'

class RoadBike < Bicycle

  attr_reader :tape_colour

  def post_initialize(args)
    @tape_colour = args[:tape_colour]
    # super(args)
  end

  # every bike has the same defaults for tire and chain size
  def spares
    super.merge({ tape_colour: tape_colour})
  end

  def default_tire_size
    '23'
  end

end

