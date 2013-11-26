class Bishop < SlidingPiece

  def initialize(options = {})
    super(options)
  end

  def move_dirs
    possible_moves(DIAGONALS)
  end


end