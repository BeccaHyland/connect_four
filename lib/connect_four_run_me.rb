require "./lib/board"
require "./lib/message"

board = Board.new
message = Message.new

#this will eventuall be a loop until...
board.display_board
puts message.welcome_instructions
user_start = gets.chomp #chomp needed?
#replace below
puts "TEMP:Let's get started! Enter A - G to choose a column."

user_column_choice = gets.strip.upcase
good_input = ["A", "B", "C", "D", "E", "F", "G"]
until good_input.any? {|good| good == user_column_choice}
  puts message.clarify
  user_column_choice = gets.strip.upcase
end

board.receive_user_checker(user_column_choice)
#checkers.receive_checker(user_choice)
#then display the board again


#is it OK for the runner to determine the winning conditions? within the loop?
