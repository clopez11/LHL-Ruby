require_relative 'spec_helper'

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
  end

  it "has and knows its HP (health points)" do
    expect(@siege_engine.health_points).to eq(400)
  end
  
  it "has and knows its AP (attack points)" do
    expect(@siege_engine.attack_power).to eq(50)
  end

end