require_relative 'spec_helper'

# Enhancement 2
# Units start off alive but they die if their HP reaches 0 or lower. This is usually a result of receiving damage from combat.
# Part 1
# Define a method #dead? on the Unit class. We add it to Unit instead of Footman because all Units can die, not just Footmans or Peasants.
# Part 2
# A dead Unit cannot attack another Unit. Conversely, a living Unit will also not attack another Unit that is already dead.

describe Unit do

  before :each do
    @dead_unit = Unit.new(0, 0)
    @living_unit = Unit.new(11, 11)
  end

  describe '#dead?' do
    it "should check if the health points is <= 0" do
      @dead_unit.dead?
      expect(@dead_unit.dead?).to be true
    end

    it "should check if the health points is >= 0" do
      @living_unit.dead?
      expect(@living_unit.dead?).to be false
    end

  end

end