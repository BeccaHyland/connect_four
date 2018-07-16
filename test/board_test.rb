require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'
require './lib/checkers'
require 'pry'

class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new
    assert_instance_of Board, board
  end

  def test_it_has_checkers
    board = Board.new
    assert_instance_of Checkers, board.checkers
  end

  def test_it_starts_with_new_board
    board = Board.new
    expected = [
      ["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "]
    ]
    assert_equal expected, board.new_board
  end

  def test_it_can_convert_board_columns_to_index
    board = Board.new
    assert_equal 2, board.convert_to_index("C")
  end

  # def test_it_finds_first_array_from_bottom_with_empty_space_at_index
  #   board = Board.new
  #   expected =[
  #     ["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "],
  #     ["_ ", "X ", "_ ", "_ ", "_ ", "_ ", "_ "]]
  #   assert_equal expected, board.find_empty_space(1)
  #   end

  def test_it_can_place_user_checker_in_bottom_row
    board = Board.new
    expected = [
      ["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "X ", "_ ", "_ ", "_ ", "_ "]
    ]
    assert_equal expected, board.receive_user_checker("C")
  end

  def test_it_can_place_user_checker_in_next_open_row
    board = Board.new
    board.receive_user_checker("C")
    board.receive_user_checker("C")
    board.receive_user_checker("C")
    board.receive_user_checker("C")
    board.receive_user_checker("C")
    expected = [
      ["_ ", "_ ", "X ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "X ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "X ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "X ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "X ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "X ", "_ ", "_ ", "_ ", "_ "]
    ]
    assert_equal expected, board.receive_user_checker("C")
  end


end
