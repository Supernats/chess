class Piece
  attr_accessor :position, :color
  attr_reader :board

  def initialize(options = {})
    @position = options[:position]
    @color = options[:color]
    @board = options[:board]
  end

  def moves
    raise NotImplementError.new("move has not been implemented for this piece")
  end

  def move(end_pos)
    @position = end_pos if moves.include?(end_pos)
  end

  def pos_in_bounds?(pos)
    pos[0].between?(0,7) && pos[1].between?(0,7)
  end

  def pos_available?(pos)
    square = @board.grid[pos[0]][pos[1]]
    square.nil? || square.color != @color
  end


end

