class Knight < SteppingPiece

  KNIGHT_DIFFS = [[1, 2],
                [1, -2],
                [2, 1],
                [2, -1],
                [-1, 2],
                [-1, -2],
                [-2, 1],
                [-2, -1]]

  def moves
    possible_moves(KNIGHT_DIFFS)
  end



end