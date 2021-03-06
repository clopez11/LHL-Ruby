class Bicycle

  attr_reader :size, :chain, :tire_size

  def initialize(args={})
    @size = args[:size]
    @chain = args[:chain] || default_chain
    @tire_size = args[:tire_size] || default_tire_size

    post_initialize(args)
  end

  def post_initialize(args)
    nil
  end
  
  def spares 
    { 
    tire_size: tire_size,
    chain: chain 
    }
  end

  def default_chain
    '10-speed'
  end

  def default_tire_Size
    raise NotImplementedError
  end

end

# bike = Bicycle.new(size: 'M', tape_colour: 'red')
# puts bike.inspect
# puts bike.size
# puts bike.spares