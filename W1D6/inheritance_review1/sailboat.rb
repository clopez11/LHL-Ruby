require_relative 'boat'

class SailBoat < Boat

  attr_reader :number_of_sails

  def initialize(number_of_sails)
    super('wind')
    @number_of_sails = number_of_sails
  end

end

# driver code

# schooner  = SailBoat.new(7)
# puts schooner.terrain
# puts schooner.propulsion
# puts schooner.number_of_sails