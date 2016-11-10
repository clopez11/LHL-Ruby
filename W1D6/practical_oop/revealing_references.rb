class RevealingReferences

  attr_reader :wheels

  def initialize(data)
    @wheels = wheelify(data)
  end

  # def diameters
  #   wheels.collect {|wheel|
  #     wheel.rim + (wheel.tire * 2)
  #   }
  # end
  # ... now everyone can send rim/tire to wheel

  # simplify code by separating it into two methods.
  # methods, like classes, should only have a single responsibility

  def diameters
    wheels.collect { |wheel| diameter(wheel) }
    # first - iterate over the array
  end

  def diameter(wheel)
    wheel.rim + (wheel.tire * 2)
    # second - calculate diameter of ONE wheel
  end

  Wheel = Struct.new(:rim, :tire)
  def wheelify(data)
    data.collect{|cell|
      Wheel.new(cell[0], cell[1])
    }
  end

end

# The official Ruby documentation (http://ruby-doc.org/core/classes/Struct.html)
# defines Struct as “a convenient way to bundle a number of attributes together, using
# accessor methods, without having to write an explicit class.”

# good example of allowing you to protect against changes externally and define the code in one place.
# makes it far more tolerant to change
