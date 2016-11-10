# http://classic.battle.net/war3/human/units/footman.shtml
require_relative 'unit'

class Footman < Unit

  GOLD_COST = 135
  FOOD_COST = 2

  def initialize
    super(60, 10)
  end

end

