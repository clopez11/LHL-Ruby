class Person
  # this method is for the class
  def self.example_class_method
    puts "We're calling an example class method"
    puts "'self' is always defined.  What is 'self' here?  Let's see."
    p self
    puts "That was self!"
  end

  # this method is for the instance of the class
  def example_instance_method
    puts "We're calling an example *instance* method"
    puts "'self' is defined here, too, but it means something different."
    p self
    puts "That was self, again, but see how it's an instance of the class."
  end

  puts "You'll see this as the class is being defined."
  puts "In this context, self is: "
  p self
  puts "See? self is the Person class."

end

# ---- self is always considered as the Person since its referring to current object when used in a method ---- 
# ---- reason why the code outside of methods are printed out first 
#      is because you are creating an instance of Person before it executes the method

# ---- driver code

Person.example_class_method
Person.new

puts '----'

becks = Person.new
becks.example_instance_method