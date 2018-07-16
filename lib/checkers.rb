class Checkers

  # def initialize
  # end

  def receive_checker(user_column_choice)
    column_index = convert_to_index(user_column_choice)
    #puts "You got to the receive_checker with column #{user_choice}"
    #the above will be an ARGUMENT RECEIVED FROM THE RUNNER
    #when the runner calls this method
    #this method: ASK THE COLUMN where to put the piece
  end

  def convert_to_index(column)
    column_to_index =
    {"A" => 0, "B" => 1, "C" => 2, "D" => 3, "E" => 4, "F" => 5, "G" => 6}
    column_to_index[column]
  end

end
