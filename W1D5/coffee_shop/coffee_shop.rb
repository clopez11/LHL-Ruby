class CoffeeShop

  attr_reader :items, :revenue
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @items = []
    @revenue = 0
  end

  def add_item(item)
    @items << item
  end

  def purchase(item_name)
    # get the item, loop through items 
    # figure out if its sold out
      # increase the revenue
    # items.each do |item|
    #   if item.sold_out
    #     puts "Sorry, item is sold out."
    #   elsif item.name == item_name
    #     @revenue = @revenue + item.price
    #   end
    # end

    # items.each do |item|
    #   if item.name == item_name && !item.sold_out 
    #     @revenue = @revenue + item.price
    #   end
    # end
    
    items.each do |item|
      if item.name == item_name
        if !item.sold_out 
          @revenue = @revenue + item.price
        else
          puts "Sorry, item is sold out: #{item_name}."
        end
      end
    end
  end

  # attr_reader :name
  # def name
  #   @name
  # end

  # attr_writer :name
  # def name=(name)
  #   @name = name
  # end
end

# Driver Code (code that tests my class)
# hastings = CoffeeShop.new("Hastings Drive")
# puts hastings.inspect 

# .new calls a method initialize
# front = CoffeeShop.new("Front Street")
### new syntax
# hastings = CoffeeShop.new(name: "Hastings Drive")









