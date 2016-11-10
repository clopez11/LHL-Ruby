require_relative 'spec_helper'

describe Scrap do
  
  before :each do
    @scrap = Scrap.new('https://news.ycombinator.com/item?id=7663775')
  end

  describe '#initialize' do

    it "should have a url" do
      expect(@scrap.url).to eq('https://news.ycombinator.com/item?id=7663775')
    end

    it "should get the title and output as Array" do
      expect(@scrap.get_title).to be_a Array
    end

    it "should get the points" do
      expect(@scrap.get_points[0]).to eq("160 points")
    end

    it "should get the post id" do
      expect(@scrap.get_post_id).to eq("7663775")
    end

  end

end