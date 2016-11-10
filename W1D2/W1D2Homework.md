1. What does string interpolation mean? Provide an example.
* String interpolations is when you can add code into a string.

* age = 30
* puts "She is #{age} years old."

2. What is the difference between single quoted strings and double quoted strings in Ruby?
* Single-quoted strings don't process ASCII escape codes and they don't do string interpolation.

3. Why do we call chomp on gets? What does it do?
* We call gets to get user input and returns it as a string value. Chomp removes lines break 

4. What is a R-E-P-L?
* read, evaluate, print, loop
* Interactive ruby shell that has full ruby language. You can utilize to test and experiment with ruby with no consequences.


5. What’s the difference between the following 2 lines of Ruby code?
puts "it's not true!" if !true
puts "it's not true!" unless true

* first code returns true if not true
* second code returns true if true

* the first line will print string if value is NOT true
* the second line will not print if true

6. Is the following ruby code valid? If so, describe what it’s doing. (Hint: Try it out in IRB)
pooped = true
underwear = if pooped
              :soiled
            else
              :safe
            end

puts underwear

* Yes, its valid because it returns true. 