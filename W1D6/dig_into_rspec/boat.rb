class Boat

  def initialize
  end

  def allowed_aboard?(inventory)
    inventory.include?('life jacket')
  end

end