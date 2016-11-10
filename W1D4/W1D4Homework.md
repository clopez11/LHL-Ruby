<!-- Question 1
What is a Class vs an instance of a Class? -->
@@class = instance of self, owned by the class itself. One overall instead of one per instance
@class  = instance of a class

<!-- Question 2
What is the difference between regular (local) variables and @instance variables? -->
local variables have limited scope, only available method its defined
instance variables can be accessed anywhere in the instance of the class. 

<!-- Question 3
What does attr_accessor do for us? What's an alternative to using attr_accessor which would achieve the same outcome? -->
make instance variables visible, changes the scope
write and read an @instance variable
attr_reader or attr_writer

<!-- Question 4
What is the purpose of the initialize method used in classes? Do you have to specify an initialize for one of your classes? -->
When Ruby creates a new object, it looks for a method named initialize and executes the default values into all the instance variables. 
YES

<!-- Question 5
Assuming a class Computer exists in our program, write out the one-line code to create an instance of it and have a variable called computer pointing to that instance. -->
new_computer = Computer.new("apple")

<!-- Quick Basics -->

- Classes are useful to use when you want to give methods to your data or have multiple instances of your data
- Class methods have access to other class methods and class variables but don't have access to instance methods or instance variables
- Instance methods can call other instance methods, instance variables, class methods, or class variables

We've previously learned about modules, the nice packages of methods that you can mix into classes. But if you often create a class so it can use methods, what's the difference? Basically, a class can be instantiated but a module cannot. A module will never be anything other than a library of methods. A class can be so much more -- it can hold its state (by keeping track of instance variables) and be duplicated as many times as you want. It's all about objects. If you need to instantiate something or otherwise have it exist over time, that's when you need to use a class instead of a module.

