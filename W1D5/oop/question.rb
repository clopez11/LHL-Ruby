class Question

  attr_accessor :num1, :num2, :solution, :switch

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @solution = @num1 + @num2
    @switch = 0 
  end

  def question_game
    if @switch == 0
      puts "#{@player_name1}, #{@num1} + #{@num2} is equal to?"
      @answer1 = gets.chomp.to_i
      @switch += 1
    elsif @switch == 1
      puts "#{@player_name2}, #{@num1} + #{@num2} is equal to?"
      @answer2 = gets.chomp.to_i
      @switch -= 1
    end
  end

end