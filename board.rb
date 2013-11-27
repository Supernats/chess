class Board
  attr_accessor :grid

  def initialize
    @grid = Array.new(8) { Array.new(8, nil) }
    # setup_pieces
  end

  def [](y, x)
    @grid[y][x]
  end

  def []=(y, x, piece)
    @grid[y][x] = piece
  end


  # def setup_pieces
 #    #white
 #    set_piece(Rook.new, [7,0], "white")
 #    set_piece(Knight.new, [7,1], "white")
 #    set_piece(Bishop.new, [7,2], "white")
 #    set_piece(Queen.new, [7,3], "white")
 #    set_piece(King.new, [7,4], "white")
 #    set_piece(Bishop.new, [7,5], "white")
 #    set_piece(Knight.new, [7,6], "white")
 #    set_piece(Rook.new, [7,7], "white")
 #    # (0..7).each {|x| x }
 #
 #
 #  end

  def set_piece(piece, pos, color)
    piece.position = pos
    piece.color = color
    self[pos[0], pos[1]] = piece
  end
end