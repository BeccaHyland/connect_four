require './lib/checkers'

class Board
  attr_reader   :checkers
  attr_accessor :new_board

  def initialize
    @checkers = Checkers.new
    @new_board = Array.new(6) { Array.new(7) {"_ "} }
  end

  def receive_user_checker(user_column_choice)
    column_index = convert_to_index(user_column_choice)
    #REVERSE the board array....
    next_row_with_space = @new_board.reverse.find do |row_array|
      #starting with the last (bottom) array,
      #ask each one if their element at that index is equal to
      row_array[column_index] == "_ "
      end
    #it will return hopefully the first empty space
    ##then somehow change that space to X... empty_space = "X " ?
    ###verify this on the printed out board...

    #check each array (in reverse order) WITH [column_index]
    #FIND THE FIRST ONE that is not equal to "_"
    #change it to X
    next_row_with_space.delete_at(column_index)
    next_row_with_space.insert(column_index, "X ")#this is not aan array method with =

  end

  def convert_to_index(column)
    column_to_index =
    {"A" => 0, "B" => 1, "C" => 2, "D" => 3, "E" => 4, "F" => 5, "G" => 6}
    column_to_index[column]
  end

  def display_board
    print "* GAME BOARD *\n"
    print "A B C D E F G\n"
    print @new_board[0].join + "\n"
    print @new_board[1].join + "\n"
    print @new_board[2].join + "\n"
    print @new_board[3].join + "\n"
    print @new_board[4].join + "\n"
    print @new_board[5].join + "\n"
  end

  def space_filled?
  end

end

# board = Board.new
# board.display_board
