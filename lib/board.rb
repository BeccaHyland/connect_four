class Board
  attr_reader :new_board

  def initialize
    @new_board = Array.new(6) { Array.new(7) {"_ "} }
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
