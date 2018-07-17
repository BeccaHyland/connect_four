require './lib/board'

class CpuPlayer

  def make_move(board) #it cannot see the board passed from the game
    column = choose_random_column
    board.find.with_index do |row_array, i|
      if board.reverse[i][column] == "_ "
      board.reverse[i].delete_at(column)
      board.reverse[i].insert(column, "0 ")
      return board
      #this will only work until the column is full I think
      end
    end
  end

  def choose_random_column
    rand(0..6)
  end



end

# cpu = CpuPlayer.new
# number = cpu.random_column
# p number
