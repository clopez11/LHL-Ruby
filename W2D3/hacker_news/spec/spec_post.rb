require_relative 'spec_helper'

describe Post do
  
  before :each do
    @post = Post.new('Testing', 'www.test.com', 100, '1234')
  end

  describe '#initialize' do
    it "should have title" do
      expect(@post.title).to eq('Testing')
    end

    it "should have url" do
      expect(@post.url).to eq('www.test.com')
    end

    it "should have points" do
      expect(@post.points).to eq(100)
    end

    it "should have item id" do
      expect(@post.item_id).to eq('1234')
    end
  end

end