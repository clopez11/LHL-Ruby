require_relative 'spec_helper'

describe SiegeEngine do
  
  before :each do
    @siege_engine = SiegeEngine.new
  end

  describe "#attack!" do
    it "if a siege engine attacks a barracks it does double (100 AP) damage" do
      enemy = Barracks.new
      expect(enemy).to receive(:damage).with(100)
      @siege_engine.attack!(enemy)
    end
  end

  describe "#attack!" do
    it "if a siege engine attacks another siege engine it does normal (50 AP) damage" do
      enemy = SiegeEngine.new
      expect(enemy).to receive(:damage).with(50)
      @siege_engine.attack!(enemy)
    end
  end

  describe "#attack!" do 
    it "returns false if a siege engine attacks a unit that is not a barracks or a siege engine" do
      enemy = Footman.new
      expect(@siege_engine.attack!(enemy)).to be_falsey
    end
  end

  describe "#damage" do
    it "should reduce the siege engine's health_points by the attack_power specified" do
      @siege_engine.damage(100)
      expect(@siege_engine.health_points).to eq(300) # starts at 400
    end
  end

end