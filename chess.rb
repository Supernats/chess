require_relative 'board'
require_relative 'piece'
require_relative 'sliding_piece'
require_relative 'queen'
require_relative 'rook'
require_relative 'bishop'
require_relative 'stepping_piece'
require_relative 'king'
require_relative 'knight'
require_relative 'pawn'

if __FILE__ == $PROGRAM_NAME
  b = Board.new

  p2 = Pawn.new board: b, position: [2,2], color: "black"
  p1 = Pawn.new board: b, position: [3,3], color: "white"


  p b.grid

end



