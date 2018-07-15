require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'
require 'pry'

class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new
    assert_instance_of Board, board
  end

  def test_it_starts_with_new_board
    board = Board.new
    expected = [
      [". ", ". ", ". ", ". ", ". ", ". ", ". "],
      [". ", ". ", ". ", ". ", ". ", ". ", ". "],
      [". ", ". ", ". ", ". ", ". ", ". ", ". "],
      [". ", ". ", ". ", ". ", ". ", ". ", ". "],
      [". ", ". ", ". ", ". ", ". ", ". ", ". "],
      [". ", ". ", ". ", ". ", ". ", ". ", ". "],
    ]
    assert_equal expected, board.new_board
  end

end
