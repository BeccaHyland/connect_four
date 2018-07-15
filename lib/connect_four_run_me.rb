require "./lib/board"
require "./lib/message"
require "./lib/checkers"


board = Board.new
message = Message.new
checkers = Checkers.new

board.display_board
puts message.welcome
#then gets.chomp for the user"s answer
#the CLEAN the user input
puts message.instructions
