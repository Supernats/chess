require_relative 'queen'
require_relative 'rook'
require_relative 'bishop'

class SlidingPiece < Piece

  ORTHOGONALS = [[-1,0],[1,0],[0,1],[0,-1]]
  DIAGONALS = [[-1,-1],[-1,1],[1,1],[1,-1]]

  def possible_moves(deltas)
    possible_moves = []
    deltas.each do |delta|
      possible_moves += check_dir(delta)
    end
    possible_moves
  end

  def check_dir(delta)
    dy, dx = delta
    y, x = @position
    moves = []
    while pos_in_bounds?([y, x]) #&& pos_available?([y,x])
      y += dy
      x += dx
      moves << [y, x]
    end
    moves
  end

  def moves
    move_dirs
  end




end