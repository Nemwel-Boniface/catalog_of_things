require_relative 'game'
require_relative 'author'

class GameController
  attr_accessor :games, :authors

  def initialize
    @games = []
    @authors = []
  end

  def list_games
    @games
  end

  def list_authors
    @authors
  end

  def add_game
    puts 'Please fill the following information:'
    puts ''
    puts 'Enter your name (Multiplayer): '
    multiplayer = $stdin.gets.chomp
    print 'When last did you play("yyyy-mm-dd"): '
    last_played_at = $stdin.gets.chomp
    game = Game.new(multiplayer, last_played_at)
    @games << game unless @games.include?(game)
    puts 'Person successfully created'
  end
end
