require 'csv'
require 'pry'

class Contact

  attr_accessor :name, :email
  
  def initialize(name, email)
    @name = name
    @email = email
  end

  class << self

    def all
      x = 0
      CSV.foreach('contacts.csv') do |line|
        line.insert(0, x += 1)
        puts "#{x}: #{line[1]} (#{line[2]})"
      end
    end

    def create(name, email)
      CSV.open("contacts.csv", "ab+") do |csv|
        csv << [name, email]
      end
    end
    
    def find(id)
      count = 0 
      index = id - 1
      id = index.to_i
      CSV.foreach("contacts.csv") do |contact|
        if id == count
          puts "#{contact[0]}, #{contact[1]}"
          break
        else
          puts "Contact not found."
          break
        end
        count += 1
      end
    end
    
    def search(term)
      CSV.foreach('contacts.csv') do |contact|
        if contact[0].include?(term) || contact[1].include?(term)
          puts "#{contact[0]}, #{contact[1]}"
        end
      end
    end

  end

end