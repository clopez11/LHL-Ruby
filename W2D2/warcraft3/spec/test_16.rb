require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  describe '#train_siege_engine' do

    it "costs 200 gold" do
      @barracks.train_siege_engine
      expect(@barracks.gold).to eq(800)
    end

    it "costs 60 lumber" do
      @barracks.train_siege_engine
      expect(@barracks.lumber).to eq(440)
    end

    it "costs 3 food" do
      @barracks.train_siege_engine
      expect(@barracks.food).to eq(77)
    end
  end

end