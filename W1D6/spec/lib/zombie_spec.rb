require "spec_helper"
require_relative "zombie"

describe Zombie do
  # your example go here
  it "is named Ash" do
    zombie = Zombie.new
    zombie.name.should == "Ash"
    # expect(zombie).to eq("Ash")
  end


  it "has no brains" do
    zombie = Zombie.new
    zombie.brains.should < 1
  end

  it 'is hungry' do
    zombie = Zombie.new
    # zombie.hungry?.should == true
    # zombie.hungry?.should be_true
    zombie.should be_hungry
  end
end

# in your terminal
# rspec spec/lib/zombie_spec.rb 

### Other matchers

# zombie.name.should == "Ash"
# zombie.alive.should == false
# zombie.alive.shoud be_false
# zombie.rotting.shoud == true
# zombie.alive.should be_true
# zombie.height.should > 5
# zombie.brains.should be < 1
# zombie.height.should >= 5
# zombie.height.should < 5
# zombie.height.should_not == 5
 

### Testing a Predicate 
# return true or false

# class Zombie
#   def hungry?
#     true
#   end
# end

 # describe Zombie do
 #   it 'is hungry' do
 #    zombie = Zombie.new
 #    # zombie.hungry?.should == true
 #    # zombie.hungry?.should be_true
 #    zombie.should be_hungry
 #   end
 # end


### To mark as pending
### useful for debugging, add x infront of it

# xit "is named Ash"

# it "is name Ash"
  # pending
  # ...
# end






