require 'pry'

def benchmark
  start_time = Time.now
  yield
  end_time = Time.now
  final_time = end_time - start_time
end
 
# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000
 
# calling benchmark function to perform the code block
running_time = benchmark { long_string.reverse }
 
puts "string.reverse took #{running_time} seconds to run"