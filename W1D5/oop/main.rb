require 'pry'
require 'colorize'

require_relative 'player'
require_relative 'question'
require_relative 'game'

# Driver Code

charlotte = Player.new("Charlotte")
puts charlotte.inspect
puts charlotte.setup
# puts charlotte.question_game
puts charlotte.game_score