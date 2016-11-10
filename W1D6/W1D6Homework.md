<!-- Question Set 1 -->
<!-- a. What is an instance variable? -->
@ instance_variable
belong to a particular object, create multiple instances
part of the state of class
will have a unique value for each new object created

<!-- b. What's the difference between an instance variable and a 'regular' variable? -->
Instance variable belong to an instance of class (belong to an object) vs. 
a regular variable holds data used by a method can change but cannot make multiple instances

<!-- Question Set 2 -->
<!-- a. What are "getter" and "setter" methods used for? -->
getter = return the value of an instance variable
setter = set the value of an instance variable

<!-- b. What is the difference between a "getter" and a "setter" method? -->
Retrieving and setting an instance variable

<!-- c. What is the simplest mechanism to allow instance variables to be readable outside a class? Writeable? Both? -->
attr_reader
attr_writer
attr_accessor

<!-- Question Set 3 -->
<!-- a. How do you inherit a class? What does that mean? -->
< notation
to be a child of another class, inherit all its characteristics including methods and variables

<!-- b. What does it mean to overwrite a parent's method? -->
When you overwrite inherited variable and method

<!-- c. What does Ruby do when you call a method on an object but that method is not defined on the object? -->
???? error 

<!-- Question Set 4 -->
<!-- a. What does super do? -->
access attributes and methods directly from parent's

<!-- b. Why use it? -->
makes your code organized and easier to manage
readable and can share attributes / methods
only have to change in one area instead of multiple