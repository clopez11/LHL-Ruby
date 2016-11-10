require 'pp'

class Contact

  @@all_contacts = []

  # attr_accessor :name, :email
  # ---- attr_accessor does both
  # ---- attr_reader
  def name
    # @name
    "Jane"
  end

  # ---- attr_writer
  def name=(new_name)
    @name = new_name
  end

  def initialize(name, email)
    @name = name
    @email = email
    @@all_contacts << self
  end

  def profile_statement
    # "hello, my name is #{@name}, email is #{@email}"
    "Not implemented yet"
  end

  # def register
  #   @@all_contacts << self
  # end

  class << self

    def all_contacts
      @@all_contacts 
    end

  end


end

# ---- driver code

charlotte = Contact.new("Charlotte", "charlotte@gmail.com")
pp charlotte.name

# john = Contact.new("John", "john@gmail.com")

# pp Contact.all_contacts

puts '----'
