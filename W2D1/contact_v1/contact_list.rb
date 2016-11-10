require_relative 'contact'

# Interfaces between a user and their contact list. Reads from and writes to standard I/O.
class ContactList

  # TODO: Implement user interaction. This should be the only file where you use `puts` and `gets`.

  puts "Here is a list of available commands:
        new     - Create new contact
        list    - List all contact
        show    - Show a contact
        search  - Search contacts"
  commands = gets.chomp

  case commands
  when "new"
    puts "Add full name: "
    name = gets.chomp
    puts "Add email address: "
    email = gets.chomp
    Contact.create(name, email)
  when "list"
    puts Contact.all
  when "show"
    puts "Add contact id: "
    id = gets.chomp.to_i
    contact = Contact.find(id)
  when "search"
    puts "Add full name or email: "
    input = gets.chomp
    contact = Contact.search(input)
    puts contact
  end

end




