# class = a way to describe a category
# pry -r './table.rb'
# irb -r './table.rb'

# create classes to separate concerns.
# class represents collection of things.

class Table

  attr_accessor :legs, :material, :colour
  # does both attr_reader and attr_writer.

  # attr_reader :legs
  # this is what attr_reader does.
  # def legs
  #   @legs
  # end
  
  # attr_writer :legs
  # this is what attr_writer does.
  # def legs=(number_of_legs)
  #   @legs = number_of_legs
  # end

  def initialize(legs, material, colour, weight)
    @legs = legs
    @material = 'material'
    @colour = 'colour'
    @weight = weight
  end

  def flip(own_weight)
    if own_weight > @weight
      puts "AHHHH! FLIP THIS TABLE! (╯°□°）╯︵ ┻━┻"
    else
      puts "NOPE!"
    end
  end

end

class Character

  @@characters_created = 0

  attr_reader :name, :health, :weapons, :strength

  def initialize(name)
    @name = name
    @health = 20
    @weapons = []
    @strength = 15
    @attack_power = 10
    @@characters_created += 1
  end

  def attack_power
    return @attack_power if @weapons.empty?
    total_attack_power = @attack_power
    @weapons.each do |weapon| 
      total_attack_power += weapon.attack_power
    end
    total_attack_power
    # @attack_power + @weapons.reduce {|total, weapon| total + weapon.attack_power }
  end

  def equip(weapon)
    return if weapons.size >= 2
    @weapons << weapon
  end

  def attack(character)
    # character.health -= attack_power
    character.wound(attack_power)
  end

  def wound(health_points)
    @health -= health_points
  end

  def self.characters_created
    @@characters_created
  end

  def lose_weapon
    weapons = @weapons.pop 
  end

  # different syntax for calling self
  # class << self

  #   def self.characterse_created
  #     @@characters_created
  #   end

  # end

end

class Hero < Character

  attr_reader :alignment

  def initialize(name)
    @alignment = 'Good'
    super(name)
    # Character.initialize(name)
  end

end

class Villain < Character

  attr_reader :alignment

  def initialize(name)
    @alignment = 'Evil'
    super(name)
  end

  def steal(character)
    @weapons << character.lose_weapon if character.weapons.size > 0
  end

end

class Weapon

  attr_reader :name, :attack_power

  def initialize(name, attack_power)
    @name = name
    @attack_power = attack_power
  end

end

# ------

@sky = Character.new("sky")
@digit = Character.new("digit")

@hero = Hero.new("hero")
@villain = Villain.new("villain")

@stick = Weapon.new('stick', 10)
@saber = Weapon.new('saber', 20)

puts Characters.characters_created







