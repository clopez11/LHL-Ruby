class Player
  
  attr_accessor :name
  attr_reader :life, :score

  def initialize(name)
    @name = name
    @life = 3
    @score = 0
  end

  def setup
    puts "Player 1, enter name:".white.on_green
    @player_name1 = gets.chomp
    puts "Player 2, enter name:".white.on_green
    @player_name2 = gets.chomp
    puts "Welcome, #{@player_name1} & #{@player_name2}.\nYou have 3 lives to start, answer simple math questions to win.\nGood Luck!"
  end

end