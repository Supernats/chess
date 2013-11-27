class King < SteppingPiece

  KING_DIFFS = [[-1,1],[-1,0],[-1,-1],
          [0,-1],[0,1],
          [1,1],[1,0],[1,-1]]

  def moves
    possible_moves(KING_DIFFS)
  end

end