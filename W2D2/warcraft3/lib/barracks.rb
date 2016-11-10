require_relative 'footman'
require_relative 'peasant'
require_relative 'siege_engine'

class Barracks

  attr_reader :gold, :food, :health_points, :lumber

  def initialize
    @gold = 1000
    @food = 80
    @health_points = 500
    @lumber = 500
  end

  def can_train_footman?
    gold >= 135 && food >= 2
  end

  def train_footman
    @gold -= Footman::GOLD_COST
    @food -= Footman::FOOD_COST
    Footman.new if can_train_footman?
  end

  def can_train_peasant?
    gold >= 90 && food >= 5
  end

  def train_peasant
    @gold -= Peasant::GOLD_COST
    @food -= Peasant::FOOD_COST
    Peasant.new if can_train_peasant?
  end

  def train_siege_engine?
    gold >= 200 && food >= 3 && lumber >= 60
  end

  def train_siege_engine
    @gold -= SiegeEngine::GOLD_COST
    @lumber -= SiegeEngine::LUMBER_COST
    @food -= SiegeEngine::FOOD_COST
    SiegeEngine.new if train_siege_engine?
  end

  def damage(points)
    @health_points -= points
  end

end
