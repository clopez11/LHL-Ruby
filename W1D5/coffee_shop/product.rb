class Product

  attr_reader :name, :price, :sold_out

  def initialize(name, price, sold_out = false)
    @name = name
    @price = price
    @sold_out = sold_out
  end

  def foo
    puts "Fooo!"
  end

end