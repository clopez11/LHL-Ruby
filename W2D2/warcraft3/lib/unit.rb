class Unit

  attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def damage(points)
    @health_points -= points
  end

  def dead?
    @health_points <= 0
  end

  # def attack!(enemy)
  #   enemy.damage(@attack_power)
  # end

  def attack!(enemy)
    if self.dead?
      "#{self.class} is dead. The dead cannot attack."
    elsif enemy.dead?
      "#{enemy.class} is dead. Let the dead rest."
    else
      enemy.damage(@attack_power)
      "Attack successful! #{@attack_power} damage on #{enemy.class}"
    end
  end
  
end