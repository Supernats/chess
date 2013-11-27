class Board
  attr_accessor :grid

  def initialize
    @grid = Array.new(8) { Array.new(8, nil) }
    setup_pieces
  end

  def [](y, x)
    @grid[y][x]
  end

  def []=(y, x, piece)
    @grid[y][x] = piece
  end

  def to_s
    @grid.each do |line|
      mapped_line = line.map do |space|
        space.nil? ? " " : space
      end
      puts mapped_line.join(" ").to_s + "\n"
    end
  end

  def move(start_pos, end_pos)
    piece = self[start_pos[0],start_pos[1]]
    if piece.move(end_pos)
      self[end_pos[0],end_pos[1]] = piece
      self[start_pos[0],start_pos[1]] = nil
    end
  end

  def deep_dup
    duped_board = self.dup
    duped_board.grid = Array.new(8) { Array.new(8, nil) }
    @grid.each_with_index do |row, row_index|
      row.each_with_index do |space, space_index|
        duped_board[row_index,space_index] = space.dup unless space.nil?
      end
    end
    duped_board
  end

  def in_check?(color)
    opponent_moves = []
    color == "white" ? opponent_color = "black" : opponent_color = "white"
    opponent_pieces = find_pieces(opponent_color)
    opponent_pieces.each do |piece|
      opponent_moves += piece.moves
    end
    p opponent_moves
    opponent_moves.any? do |move|
      self[move[0],move[1]].class == King
    end
  end

  def find_pieces(color)
    pieces = []
    @grid.each do |row|
      row.each do |space|
        pieces << space if !space.nil? && space.color == color
      end
    end
    pieces
  end




  def setup_pieces
    #white
    set_piece(Rook.new(board: self), [7,0], "white")
    set_piece(Knight.new(board: self), [7,1], "white")
    set_piece(Bishop.new(board: self), [7,2], "white")
    set_piece(Queen.new(board: self), [7,3], "white")
    set_piece(King.new(board: self), [7,4], "white")
    set_piece(Bishop.new(board: self), [7,5], "white")
    set_piece(Knight.new(board: self), [7,6], "white")
    set_piece(Rook.new(board: self), [7,7], "white")
    (0..7).each do |x|
      set_piece(Pawn.new(board: self), [6, x], "white")
    end

    #black
    set_piece(Rook.new(board: self), [0,0], "black")
    set_piece(Knight.new(board: self), [0,1], "black")
    set_piece(Bishop.new(board: self), [0,2], "black")
    set_piece(King.new(board: self), [0,3], "black")
    set_piece(Queen.new(board: self), [0,4], "black")
    set_piece(Bishop.new(board: self), [0,5], "black")
    set_piece(Knight.new(board: self), [0,6], "black")
    set_piece(Rook.new(board: self), [0,7], "black")
    (0..7).each do |x|
      set_piece(Pawn.new(board: self), [1, x], "black")
    end
  end

  def set_piece(piece, pos, color)
    piece.position = pos
    piece.color = color
    self[pos[0], pos[1]] = piece
  end
end