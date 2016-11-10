require_relative 'Bicycle'

class Fixie < Bicycle

  def initialize
    super('road')
  end

end

# driver code

# yellow = Fixie.new
# puts yellow.terrain
# puts yellow.propulsion