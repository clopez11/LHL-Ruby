@contact = Contact.new(...)
@contact.name = "Charlotte"
@contact.save

@contact = Contact.find_by_name("Charlotte")

# --- 

class Contact

  def initialize
    # ...
  end

  def save
  end

  def self.find_by_name(name)
    # find_by_name
    # returns a @contact
  end

end