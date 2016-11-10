require_relative 'spec_helper'

# In most strategy games, like Warcraft III, buildings can also be attacked by Units. Since a Barracks is a building, it has substantially more HP (500). Additionally, a Footman does only half of its AP as damage to a Barracks. This is because they are quite ineffective against buildings.

# The damage amount should be an integer (Fixnum), but the ceiling (ceil) of the division should be used as the resulting amount.

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  it "has and knows its HP (health points)" do
    expect(@barracks.health_points).to eq(500)
  end

  describe '#damage' do
    it "should reduce the Barracks health_points by the attack power specified (5)" do
      @barracks.damage(5)
      expect(@barracks.health_points).to eq(495)
    end
  end
  
end