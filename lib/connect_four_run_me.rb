require "./lib/board"
require "./lib/message"
require './lib/cpu_player'
require 'pry'

board = Board.new
message = Message.new
cpu_player = CpuPlayer.new

board.display_board
puts message.welcome_instructions
gets

while board.board_full? == false
  puts message.request_user_turn

  user_column_choice = gets.strip.upcase
  if user_column_choice == "QUIT"
    break
  else
    good_input = ["A", "B", "C", "D", "E", "F", "G"]
    until good_input.any? {|good| good == user_column_choice}
      puts message.clarify
      user_column_choice = gets.strip.upcase
    end

    board.receive_user_checker(user_column_choice)
    board.display_board
    if board.horizontal_win?(board.new_board) ||
      board.vertical_win?(board.new_board)
      puts message.user_win
      break
    else
      puts message.request_cpu_turn
      gets
      cpu_player.make_move(board.new_board)
      board.display_board
    end
  end
end
