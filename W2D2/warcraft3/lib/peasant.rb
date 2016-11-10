require_relative 'unit'

class Peasant < Unit

  GOLD_COST = 90
  FOOD_COST = 5

  def initialize
    super(35, 0)
  end

end