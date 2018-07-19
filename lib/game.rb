require "./lib/board"
require "./lib/message"
require './lib/cpu_player'
require 'pry'

class Game
  attr_reader :board,
              :message,
              :cpu_player

  def initialize
    @board = Board.new
    @message = Message.new
    @cpu_player = CpuPlayer.new
  end

  def start_game
    board.display_board #may need to clear board
    puts message.welcome_instructions
    gets
    get_good_input
  end
  #
  def get_good_input
    #while board.board_full? == false
    puts message.request_user_turn
    user_column_choice = gets.strip.upcase
    if user_column_choice == "QUIT"
      puts message.goodbye
    else
      good_input = ["A", "B", "C", "D", "E", "F", "G"]
      until good_input.any? {|good| good == user_column_choice}
        puts message.clarify
        user_column_choice = gets.strip.upcase
      end
    end
    place_user_piece(user_column_choice)
  end

  def place_user_piece(user_column_choice)
    board.receive_user_checker(user_column_choice)
    board.update_whether_board_full(board.new_board)
    board.display_board
    determine_win_or_continue
  end

  def determine_win_or_continue
    if board.user_horizontal_win?(board.new_board) ||
      board.user_vertical_win?(board.new_board)
      puts message.user_win
    elsif board.board_full? == true
      puts message.draw
    else
      puts message.request_cpu_turn
      gets
      cpu_player.make_move(board.new_board)
      board.display_board
      if board.cpu_horizontal_win?(board.new_board) ||
        board.cpu_vertical_win?(board.new_board)
        puts message.cpu_win
      elsif board.board_full? == true
        puts message.draw
      else
      get_good_input
      end
    end
  end

end
