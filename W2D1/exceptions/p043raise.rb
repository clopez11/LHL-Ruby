def raise_exception
  puts 'I am before the raise.'
  raise 'An error has occured.'
  puts 'I am after the raise.'
end

# ---- driver code

raise_exception