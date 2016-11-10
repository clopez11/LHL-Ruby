W2D2 HOMEWORK

What is a class method?
keyword self
method belongs to the class itself, does not have access to instance methods or instance variables. But instance methods and instance variables can access both and class variables.

How is class method different from an instance method? What is the difference between how you call class method and instance method?
class method can only be use with class name
instance methods use an instance of class

class Class
  def self.method
  end
  def instance_method
  end
end

Class.method
new_class = Class.new
new_class.instance_method
  
a. functionality = find, list, create 
b. Class Methods
c. User.find / User.create since they are both Class Methods
d. error code of undefined method, User.new will create an instance of Class user u but all method is only a class method
e. return and run run script, since the method belongs to the class you have to specify that all as a class method

a. find / all and create are methods of Object class
b. they also have access to those methods since they inherit 
from Object class

a. the method gets overriden by the subclass
b. by inheriting < and using keyword super???