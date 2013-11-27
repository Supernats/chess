class Queen < SlidingPiece

  def move_dirs
    possible_moves(ORTHOGONALS) + possible_moves(DIAGONALS)
  end

end