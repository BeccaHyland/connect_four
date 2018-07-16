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
    if @new_board[5][column_index] == "_ "
      @new_board[5].delete_at(column_index)
      @new_board[5].insert(column_index, "X ")
    elsif
      @new_board[4][column_index] == "_ "
      @new_board[4].delete_at(column_index)
      @new_board[4].insert(column_index, "X ")
    elsif
      @new_board[3][column_index] == "_ "
      @new_board[3].delete_at(column_index)
      @new_board[3].insert(column_index, "X ")
    elsif
      @new_board[2][column_index] == "_ "
      @new_board[2].delete_at(column_index)
      @new_board[2].insert(column_index, "X ")
    elsif
      @new_board[1][column_index] == "_ "
      @new_board[1].delete_at(column_index)
      @new_board[1].insert(column_index, "X ")
    elsif
      @new_board[0][column_index] == "_ "
      @new_board[0].delete_at(column_index)
      @new_board[0].insert(column_index, "X ")
    else
      puts "Oops, this column is full." #loop back to ?
    end
    return @new_board
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
