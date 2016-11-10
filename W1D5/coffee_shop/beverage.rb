require_relative 'product'

class Beverage < Product

  attr_reader :size_in_oz

  def initialize(name, price, size_in_oz, sold_out = false)
    @size_in_oz = size_in_oz
    # calls initialize in product
    # name refers to the local variable name that was passed in as a parameter
    super(name, price, sold_out)
  end

  def foo
    puts "lalala!!"
    super
  end

end

canadiana = Beverage.new("Canadiana", 111, 8)
# decaf = Beverage.new("Decaf", 111, 8, true)
# orange = Beverage.new(price: 123, name: "Orange", 111, sold_out: true, size_in_oz: 1)
puts canadiana.inspect
puts canadiana.foo



