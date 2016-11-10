require 'pry'
require 'colorize'

# declare all the variables
@player1 = 3
@player2 = 3
@score1 = 0
@score2 = 0
@switch = 0

def setup
  puts "Player 1, enter name:".white.on_green
  @player_name1 = gets.chomp
  puts "Player 2, enter name:".white.on_green
  @player_name2 = gets.chomp
  puts "Welcome, #{@player_name1} & #{@player_name2}.\nYou have 3 lives to start, answer simple math questions to win.\nGood Luck!"
end

def question_game
  @num1 = rand(1..20)
  @num2 = rand(1..20)
  @solution = @num1 + @num2

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

def game_score

  looping = true

  while looping
    question_game
    if @switch == 1 && @answer1 == @solution
      @score1 += 1
      puts "Correct, #{@player_name1} has #{@player1} lives remaining and #{@score1} points.".white.on_green.blink
    elsif @switch == 0 && @answer2 == @solution
      @score2 += 1
      puts "Correct, #{@player_name2} has #{@player2} lives remaining and #{@score2} points.".white.on_green.blink
    elsif @switch == 1 && @answer1 != @solution
      @player1 -= 1
      puts "Wrong, #{@player_name1} has #{@player1} lives remaining and #{@score1} points.".white.on_red.blink
    elsif @switch == 0 && @answer2 != @solution
      @player2 -= 1
      puts "Wrong, #{@player_name2} has #{@player2} lives remaining and #{@score2} points.".white.on_red.blink
    end

    if @player1 < 1 || @player2 < 1
      puts "Game Over!"
      if @player1 > @player2
        puts "Winner, player 1: #{@player_name1}".white.on_green.blink
      elsif @player1 < @player2
        puts "Winner, player 2: #{@player_name2}".white.on_red.blink
      end
      puts "#{@player_name1}, #{@player1} lives, #{@score1} points."
      puts "#{@player_name2}, #{@player2} lives, #{@score2} points."
      looping = false
    end
  end
end

puts setup
puts game_score







