# Define these empty classes: Animal, Mammal, Amphibian, Primate, Frog, Bat, Bird, Parrot, and Chimpanzee

module Flight

  def fly
    puts "I'm flying!" 
  end

end

module Food
  
  def eat
    puts "eat grass"
  end

end

class Animal

  attr_reader :num_of_legs, :colour, :coverage, 
              :diet, :habitat

  def initialize(name, num_of_legs, colour, coverage, diet, habitat)
    @name         = name
    @num_of_legs  = num_of_legs
    @colour       = colour
    @coverage     = coverage
    @diet         = diet
    @habitat      = habitat
  end

end

class Mammal < Animal

  def initialize(name, num_of_legs, colour, coverage, diet)
    super(name, num_of_legs, colour, coverage, diet, "land and water")
  end

end

class Amphibian < Animal

  def initialize(name, num_of_legs, colour, coverage, diet)
    super(name, num_of_legs, colour, coverage, diet, "water")
  end

end

class Primate < Animal

  def initialize(name, num_of_legs, colour, coverage, diet)
    super(name, num_of_legs, colour, coverage, diet, "land")
  end

end

class Frog < Amphibian

  def initialize(name, num_of_legs, colour)
    super(name, num_of_legs, colour, "lycra", "fish")
  end

end

class Bird < Mammal

  include Flight
  def initialize(name, colour)
    super(name, 2, colour, "epidermis", "fish and eggs")
  end

end

class Bat < Mammal

  include Flight
  def initialize(name)
    super(name, 2, "brown", "fur", "insects")
  end

end

class Parrot < Mammal

  include Flight
  def initialize(name)
    super(name, 2, "multi-colour", "feather", "rats")
  end

end

class Chimpanzee < Primate

  include Food
  def initialize(name, colour)
    super(name, 4, colour, "fur", "vegetables")
  end

end














