module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end

  def self.some_out_of_place_method(num)
    num ** 2
  end
end

module Walkable
  def walk
    puts "I'm walking."
  end
end

module Swimmable
  def swim
    puts "I'm swimming."
  end
end

module Climbable
  def climb
    puts "I'm climbing."
  end
end

class Animal

  attr_accessor :name

  include Walkable
  def initialize(name)
    @name = name 
  end

  def speak
    "I'm an animal, and I speak!"
  end

  def a_public_method
    "Will this work? " + self.a_protected_method
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end

end

class Fish < Animal
  include Swimmable
end

class GoodDog < Animal

  DOG_YEARS = 7

  attr_reader :colour, :age

  include Climbable
  include Swimmable
  def initialize(name, colour, age)
    super(name)
    @colour = colour
    @age = age
    # self.name = n
  end

  def speak
    # "#{self.name} says, woof!"
    super + " from GoodDog class."
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}"
  end

  private

  def human_years
    age * DOG_YEARS
  end

end

class BadDog < Animal

  attr_reader :age

  include Swimmable
  def initialize(name, age)
    super(name)
    @age = age
  end

end
 
class Cat < Animal
end


# --- driver code

puts "---- Animal Method Lookup ---- "
puts Animal.ancestors

puts '----'

fido = Animal.new("fido")
puts fido.inspect
puts fido.speak
puts fido.walk
puts fido.a_public_method
puts fido.a_protected_method

puts '----'

neemo = Fish.new("neemo")
puts neemo.inspect
puts neemo.swim


puts "---GoodDog method lookup---"
puts GoodDog.ancestors

puts '----'

sparky = GoodDog.new("sparky","brown", 2)
puts sparky.inspect
puts sparky.speak
puts sparky.swim
puts sparky.climb
puts sparky.public_disclosure

puts '----'

doggy = BadDog.new("doggy", 2)
puts doggy.inspect
puts doggy.speak
puts doggy.swim

puts '----'

paws = Cat.new("paws")
puts paws.inspect
puts paws.speak


puts '----'

buddy = Mammal::Dog.new
puts buddy.inspect

kitty = Mammal::Cat.new
puts kitty.inspect

buddy.speak('Arf!')
kitty.say_name('kitty') 

puts '----'

value = Mammal.some_out_of_place_method(4)
puts value 


