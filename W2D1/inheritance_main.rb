require_relative 'inheritance'

# --- driver code

dog = Animal.new("dog", 4, "brown/white", "fur", "raw", "house") 
puts dog.inspect

puts '----'  

chimp = Mammal.new("chimp", 4, "brown", "hair", "vegetables") 
puts chimp.inspect

puts '----'

gates = Primate.new("gates", 4, "green", "leather", "fish")
puts gates.inspect

puts '----'

pop = Frog.new("pop", 4, "yellow")
puts pop.inspect

puts '----'

red = Bird.new("red", "white")
puts red.inspect
puts red.fly

puts '----'

rain = Bat.new("rain")
puts rain.inspect
puts rain.fly

puts '----'

pirate = Parrot.new("pirate")
puts pirate.inspect
puts pirate.fly

puts '----'

kong = Chimpanzee.new("kong", "dark brown")
puts kong.inspect
puts kong.eat

puts '----'




