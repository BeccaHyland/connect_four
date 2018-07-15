class Message

  def welcome
    "Welcome to Connect Four. Are you ready to play? Enter YES or NO."
  end

  def clarify
    "Oops, I couldn't read your response. Please try again."
  end

  def instructions
    "\nOK, here are your instructions:
    \n***CONNECT FOUR***
    GOAL:\nTo place four of your checkers in a row on the grid,
    while blocking your opponext from doing the same.
    The winning row can be:\n *vertical, horizontal, or diagonal.
    GAME PLAY:\nOn your turn, choose one column (A-G) to drop a piece into.
    If there are no other pieces in that column,
    your piece will go to the bottom row.
    If there are other pieces already in the column,
    your piece will stack on top of them.
    Your adversary is a computer player, who will play first using X pieces.
    You will play second, using 0 pieces.
    GOOD LUCK!"
  end

  def request_user_turn
  end

end
