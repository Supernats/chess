class Queen < SlidingPiece

  def initialize(options = {})
    super(options)
  end

  def move_dirs
    possible_moves(ORTHOGONALS) + possible_moves(DIAGONALS)
  end

end