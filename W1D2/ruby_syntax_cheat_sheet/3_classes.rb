class Car
  attr_accessor :make
  attr_accessor :model
  
  # When Car.new is called, this method is run
  # Therefore, for this class, you must pass in 2 variables (make and model) when creating a new instance of it
  def initialize(make, model)
    @make = make
    @model = model
  end
end

