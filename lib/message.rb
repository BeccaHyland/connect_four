class Message

  def clarify
    "Oops, Connect Four can't read that. Please try again."
  end

  def temp_placeholder
    "Great, the designer is thinking about what to do next."
  end

  def welcome_instructions
    "\n\t*** WELCOME TO CONNECT FOUR ***\nGOAL:
    To place four of your checkers in a row on the board (see above)
    while blocking your opponext from doing the same.
    The winning row can be vertical, horizontal, or diagonal.\n\nGAME PLAY:
    On your turn, choose one column (A-G) to drop a piece into.
    If there are no other pieces in that column,
    your piece will go to the bottom row of the column.\n
    If there ARE other pieces already in the column,
    your piece will stack ON TOP of them.\n
    Your opponent is a computer player,
    who will play first using X pieces.
    You will play second, using 0 pieces.
    GOOD LUCK!\n*** To start, enter any key."
  end

  def request_user_turn
  end

end
