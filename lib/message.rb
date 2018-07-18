class Message

  def clarify
    "Oops, Connect Four can't read that. Please try again."
  end

  def temp_placeholder
    "Great, the designer is thinking about what to do next."
  end

  def welcome_instructions
    #change this message to reflect user taking FIRST turn
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
    who will play second using O pieces.
    You will play first, using X pieces.
    GOOD LUCK!\n*** To start, hit RETURN or ENTER.
    After the game starts, enter QUIT if you need to leave the game."
  end

  def request_user_turn
    "It's your turn!
    Enter a letter A - G to choose a column."
  end

  def request_cpu_turn
    "Now it's the computer's turn.
      To see the computer's move, hit RETURN or ENTER."
  end

  def user_win
    "CONGRATULATIONS, you are the winner!\n
    Thanks for playing ConnectFour!\n
    To quit, enter QUIT.\n
    To play again, enter any other key."
  end

end
