require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require 'pry'

class GameTest < Minitest::Test

  def test_it_exists
    game = Game.new
    assert_instance_of Game, game
  end

  def test_it_initializes_instances_of_game_components
    game = Game.new
    assert_instance_of Board, game.board
    assert_instance_of Message, game.message
    assert_instance_of CpuPlayer, game.cpu_player
  end

end
