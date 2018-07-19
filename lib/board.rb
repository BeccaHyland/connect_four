class Board
  attr_accessor :new_board,
                :board_full

  def initialize
    @new_board = Array.new(6) { Array.new(7) {"_ "} }
    @board_full = false
  end

  def board_full?
    @board_full
  end

  def update_whether_board_full(board)
    if board.none? do |row_array|
      row_array.include?("_ ")
      end
      @board_full = true
    end
  end

  def convert_to_index(column)
    column_to_index =
    {"A" => 0, "B" => 1, "C" => 2, "D" => 3, "E" => 4, "F" => 5, "G" => 6}
    column_to_index[column]
  end

  def receive_user_checker(user_column_choice)
    column_index = convert_to_index(user_column_choice)
    @new_board.find.with_index do |row_array, i|
      if @new_board.reverse[i][column_index] == "_ "
      @new_board.reverse[i].delete_at(column_index)
      @new_board.reverse[i].insert(column_index, "X ")
      return @new_board
      end
    end
  end

  def user_horizontal_win?(board)
    if board.any? do |row_array|
      row_array.join.include?("X X X X ")
      end
      true
    else false
    end
  end

  def user_vertical_win?(board)
    board = board.transpose
    if board.any? do |row_array|
      row_array.join.include?("X X X X ")
      end
      true
    else false
    end
  end

  def cpu_horizontal_win?(board)
    if board.any? do |row_array|
      row_array.join.include?("0 0 0 0 ")
      end
      true
    else false
    end
  end

  def cpu_vertical_win?(board)
    board = board.transpose
    if board.any? do |row_array|
      row_array.join.include?("0 0 0 0 ")
      end
      true
    else false
    end
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

end
