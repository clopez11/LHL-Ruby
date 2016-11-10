require_relative 'spec_helper'

describe Comment do

  before :each do
    @comment = Comment.new("this is a test comment here", "username", "7117")
  end

  describe '#initialize' do

    it "should have a text comment" do
      expect(@comment.text).to eq('this is a test comment here')
    end

    it "should have a username" do
      expect(@comment.username).to eq('username')
    end

    it "should have a post id" do
      expect(@comment.post_id).to eq('7117')
    end

  end

end