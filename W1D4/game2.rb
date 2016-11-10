#require 'byebug'
require 'pry'

#helper methods
def math_question
  @first_num = rand(1..20)
  @second_num = rand(1..20)
  @answer = @first_num + @second_num
  #if turn is 0, asks player 1 a math question, then adds a turn
  if @turn == 0
    puts "PLAYER 1 ANSWER THIS: #{@first_num} + #{@second_num}?"
    @turn += 1
    @user_input = gets.chomp.to_i
    binding.pry
    #if turn is 0 asks player 2 a math question, then subtracts a turn to bring it back to player 1
  elsif @turn == 1
    puts "PLAYER 2 ANSWER THIS: #{@first_num} + #{@second_num}?"
    @turn -= 1
    @user_input = gets.chomp.to_i
  end
end

#players lives
@player1_lives = 3
@player2_lives = 3
#live count
@player1_rightanswers = 0
@player2_rightanswers = 0
#start the turns at 0, so player 1 goes first
@turn = 0
repl_bool = true

#REPL TIME, BABY
while repl_bool

  math_question
  #if player 1 is correct, add 1 point
  if @turn == 1 && @user_input == @answer
    @player1_rightanswers += 1
  #if player 2 is right, add 1 point
  elsif @turn == 0 && @user_input == @answer
    @player2_rightanswers += 1
  #if player 1 is wrong, subtract 1 life
  elsif @turn == 1 && @user_input != @answer
    @player1_lives -= 1
  #if player 2 is wrong, subtract 1 life
  elsif @turn == 0 && @user_input != @answer
    @player2_lives -= 1
  end

  puts "THE SCORE SO FAR IS:
        PLAYER1: #{@player1_rightanswers} CORRECT ANSWERS #{@player1_lives} LIVES
        PLAYER2: #{@player2_rightanswers} CORRECT ANSWERS #{@player2_lives} LIVES"
  #if either player goes below 1 life, end the game.
  if @player1_lives < 1 || @player2_lives < 1
    puts "GAME OVER"
    #if game over, whoever has the most lives wins
    if @player1_lives > @player2_lives
      puts "PLAYER1 IS THE VICTOR!"
    else
      puts "PLAYER2 IS THE VICTOR!"
    end
    puts "PLAYER 1 HAD: #{@player1_rightanswers} CORRECT ANSWERS, PLAYER2 HAD #{@player2_rightanswers} CORRECT ANSWERS."
    repl_bool = false
  end
end


