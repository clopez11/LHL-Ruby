class Product

  attr_reader :name, :price

  def initialize(name, price)

    if name.nil? || price.nil?
      raise ArgumentEror, "Invalid product. Must have name and price"
    end

    @name = name
    @price = price
  end

end