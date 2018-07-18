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

    def test_it_starts_with_an_unfull_board
      board = Board.new
      refute board.board_full?
    end

    def test_it_can_identify_full_board
      board = Board.new
      board.update_whether_board_full(board.new_board)
      refute board.board_full?
      test_board = [
        ["X ", "0 ", "X ", "0 ", "X ", "0 ", "X "],
        ["0 ", "X ", "0 ", "X ", "0 ", "X ", "0 "],
        ["X ", "0 ", "X ", "0 ", "X ", "0 ", "X "],
        ["0 ", "X ", "0 ", "X ", "0 ", "X ", "0 "],
        ["X ", "0 ", "X ", "0 ", "X ", "0 ", "X "],
        ["0 ", "X ", "0 ", "X ", "0 ", "X ", "0 "]
      ]
      board.update_whether_board_full(test_board)
      assert board.board_full?
    end

  def test_it_can_convert_board_columns_to_index
    board = Board.new
    assert_equal 2, board.convert_to_index("C")
  end

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

  def test_it_can_place_user_checker_in_next_open_row_from_bottom
    board = Board.new
    board.receive_user_checker("C")
    board.receive_user_checker("C")
    board.receive_user_checker("C")
    board.receive_user_checker("C")
    expected = [
      ["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "X ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "X ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "_ ", "X ", "_ ", "_ ", "_ ", "_ "],
      ["_ ", "X ", "X ", "_ ", "_ ", "_ ", "_ "]
    ]
    assert_equal expected, board.receive_user_checker("B")
  end

  def test_it_can_identify_four_in_a_horizontal_row
    board = Board.new
    board.receive_user_checker("C")
    board.receive_user_checker("D")
    board.receive_user_checker("E")
    board.receive_user_checker("F")
    assert_equal true, board.horizontal_win?(board.new_board)
  end

  def test_it_can_identify_four_in_a_vertical_row
    board = Board.new
    board.receive_user_checker("C")
    board.receive_user_checker("C")
    board.receive_user_checker("C")
    board.receive_user_checker("C")
    assert_equal true, board.vertical_win?(board.new_board)
  end

  # def
  #   board = Board.new
  #   test_board = [
  #     ["0 ", "X ", "0 ", "X ", "0 ", "X ", "0 "],
  #     ["X ", "0 ", "X ", "0 ", "X ", "0 ", "X "],
  #     ["0 ", "X ", "0 ", "X ", "0 ", "X ", "0 "],
  #     ["X ", "0 ", "X ", "0 ", "X ", "0 ", "X "],
  #     ["0 ", "X ", "0 ", "X ", "0 ", "X ", "0 "],
  #     ["X ", "0 ", "X ", "0 ", "X ", "0 ", "X "]
  #   ]
  #   assert_equal true, board.draw?(test_board)
  # end

end
