require "./lib/board"
require "./lib/message"
require "./lib/checkers"

board = Board.new
message = Message.new
checkers = Checkers.new

#this will eventuall be a loop until...
board.display_board
puts message.welcome_instructions
user_start = gets.chomp
#replace below
puts "TEMP:Let's get started! Enter A - G to choose a column."

user_choice = gets.strip.upcase
good_input = ["A", "B", "C", "D", "E", "F", "G"]
until good_input.any? {|good| good == user_choice}
  puts message.clarify
  user_choice = gets.strip.upcase
end

checkers.receive_checker(user_choice)
#then display the board again
