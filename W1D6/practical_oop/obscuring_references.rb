class ObscuringReferences

  attr_reader :data

  def initialize(data)
    @data = data
  end

  def diameters
    # 0 is rim, 1 is tire
    data.collect {|cell|
      cell[0] + (cell[1] * 2)
    }
  end
  # ... many other methods that index into the array
end

# rim and tire sizes (non in millimeters!) in a 2 array!
@data = [[622, 20], [622, 23], [559, 30], [559, 40]]

data = ObscuringReferences.new(@data)
data.diameters
puts data.inspect

# not a good example