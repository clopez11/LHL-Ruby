# procedural programming, good for smaller application

Beverages
Treats
CoffeeShop

coffee_shop = {
  name: "Starbucks",
  address: "Front Street",
  treats : [
    { name: "Chocolate Croissant", price: 299, out_of_stock: true},
    { name: "Quinoa Salad", price: 999, out_of_stock: false}
  ]
}

def out_of_stock(name)
  # code to iterate through coffee_shop to find names 
end

##### OOP ####
# Class == Template, create an object for you (e.g. factory). Define properties that you need to keep track of.
# Object is applying that template to create individual object
# Different from each other but built from the same template

#### 4 main oop: 
# Polymorhism 
# Inheritance: allows you to share parameters from different classes
# Abstraction: grouping together actions and data in classes 
# Encapsulation: keeping track of data in objects (for organizational purposes)

# Example
# This application is a simple point of sale system for coffee shops. We want to keep track of the following data:
# Coffee Shop: name, list of items, revenue
# Beverages: name, price, sold_out, size_in_oz
# Treats: name, price, sold_out, vegeterian

#### Perform certain actions
# start with data to organize items
# - Create a new type of item (ex. Some coffee shops start serving chai lattes).
# - Add an item to the list of items available in a coffee shop.
# - Customer purchases an item. Handle situation when item is sold out? Update total revenue
# - Mark an item as sold out

# IRB, require_relative to access class in .rb file

# #<CoffeeShop:0x007f9e4a23f7b8 @name="hastings street">
#### class, objectid and instance variable
# object id == stored in memory in your computer 

## TIP! 
# 2 types of methods in programming, read / write
# - method is doing something, name should be a verb
# - method is reading, name should be a noun
# - get awesome at readability of code rather than performance in the beginning

















































