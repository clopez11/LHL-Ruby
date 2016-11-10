require_relative 'unit'

class SiegeEngine < Unit

  GOLD_COST = 200
  LUMBER_COST = 60
  FOOD_COST = 3

  def initialize
    super(400, 50)
  end

  def attack!(enemy)
    if enemy.class == Barracks
      enemy.damage(attack_power * 2)
    elsif enemy.class == SiegeEngine
      enemy.damage(attack_power)
    elsif enemy == SiegeEngine
      enemy.damage(attack_power)
    else
      false
    end
  end

end