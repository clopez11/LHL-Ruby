1. In byebug, what is the difference between the next and step commands?

* next, goes to the next line of code
* step, goes to next method for evaluation

2. What is the difference between the select and detect methods in ruby (you can call them on arrays and other "Enumerables")?

* select: Will iterate until the end of list and returns all items that is TRUE. 

* detect: returns the first item from the block that returns TRUE. Stops iterating after the condition returns TRUE. 
e.g. >> [1,2,3,4,5,6,7].detect { |x| x.between?(3,4) } => 

3. What is the block that is passed into select used for?

* To return a true value. Run the block on every item of your object and return a new object that contains those items.

4. What's an Enumerable?

* An object that may be enumerated. Means to count off the members of a set of collection, list…etc one by one
* An object that can go through a series of objects one by one
* Get Elements out of a collection, one at a time

5. Name two types of objects in Ruby that you think are enumerable. Bonus: name a third type.

* Hash and Arrays.
* Ranges (1..4, a..z)