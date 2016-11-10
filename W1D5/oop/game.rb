class Game

  def initialize
    @player_name1 = Player.new("#{@player_name1}")
    @player_name2 = Player.new("#{@player_name2}")
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

end
