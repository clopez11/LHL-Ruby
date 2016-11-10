class NoCustomerException < StandardError
end

def find(username)
  raise NoCustomerException, 'customer does not exist'
end

begin
  find('steven')
rescue NoCustomerException => e
  puts e
end