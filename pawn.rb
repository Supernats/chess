class Pawn < Piece

  def moves
    moves = []
    set_diffs.each do |diff|
      y, x = @position
      dy, dx = diff
      moves << [y + dy, x + dx] if pos_in_bounds?([y + dy, x + dx])
    end
    moves
  end


  def set_diffs
    diag_diffs = []
    y, x = @position
    [[attack_vector,-1],[attack_vector,1]].each do |pos|
      checked_square = @board.grid[pos[0] + y][pos[1] + x]
      if !checked_square.nil? && checked_square.color != @color
        diag_diffs << pos
      end
    end
    diag_diffs + forward_diffs
  end

  def forward_diffs
    attack_vector == 1 ? pawn_row = 1 : pawn_row = 6
    y, x = @position
    # => Checking one move forward
    forward_diffs = []
    pos1 = [y + attack_vector, x]
    forward_diffs << [attack_vector,0] if pos_in_bounds?(pos1) && pos_available?(pos1)
    if y == pawn_row
      pos2 = [y + attack_vector*2, x]
      forward_diffs << [attack_vector*2,0] if pos_in_bounds?(pos2)
    end
    forward_diffs
  end

  def attack_vector
    @color == "white" ? -1 :  1
  end


end