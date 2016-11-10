# user_interface.rb

require_relative './sms'
# require_relative './todo'


def show_menu
  puts "Enter a command:"
  puts "(A) Add"
  puts "(L) List"

  add_todo("hello")
end
