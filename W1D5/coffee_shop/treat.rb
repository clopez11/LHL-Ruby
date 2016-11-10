class Treat

  attr_reader :name, :price, :vegeterian, :sold_out

  def initialize(name, price, vegeterian, sold_out = false)
    @name = name
    @price = price
    @vegeterian = vegeterian    
    @sold_out = sold_out
  end

end

# macaroons = Treat.new("Macadamia", 123, false)
# puts macaroons.inspect