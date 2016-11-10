# ---- Example 1 Raising Exception ----

# def i_must_have_truth(value)
#   raise TypeError, 'You must give me truth' if value == false
# end

# i_must_have_truth false

# ---- Example 2 Raising Exceptions ----

# def i_must_have_truth(value)
#   raise "Hello"
# end

# i_must_have_truth false

# ---- Example 3 Rescuing Exceptions ----

# begin
#   1 / 0
#   p 'I should never get executed'
# rescue
#   p 'I am rescuing an exception and can do what I want!'
# end

# ---- Example 4 Rescuing Exceptions ----

# i = 0
# while i <= 10
#   begin
#     if i == 0
#       1 / 0
#     end
#     raise "random runtime exception"
#     p 'I should never get executed'
#   rescue ZeroDivisionError
#     p 'I am rescuing only ZeroDivisionErrors!'
#     i += 1
#   end
# end

# ---- Example 5 Rescuing Exceptions ----

# file = nil
# begin
#   file = File.open("blah.txt")
#   raise
# rescue
#   p 'I rescue all exception and raise new ones'
# ensure
#   file.close
#   p 'just closed the file'
# end

# ---- Example 6 Rescuing Exceptions Inside Methods ----

# def some_method
#   p 'Hello method'
#   raise
#   p 'Bye method'
# rescue
#   p 'Rescuing exceptions'
# end
# some_method

# ---- Example 7 Rescuing Exceptions ----

# begin
#   raise ZeroDivisionError, "Hello I am a random zero division error"
# rescue ZeroDivisionError => e
#   p e.message
#   p e.backtrace
# end

# ---- Example 8 Rescuing Exceptions ----

# begin
#   raise "Hello I am a random runtime error"
# rescue => e
#   p e.message
#   p e.backtrace
# end

# ---- Example 8 Creating Your Own Exceptions ----

# class MyCrazyException < StandardError
# end

# raise MyCrazyException, "I am a crazy new exception"

# ---- Example 9 Creating Your Own Exceptions ----

# File.open("")
