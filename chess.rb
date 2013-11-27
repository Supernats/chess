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

  p1= Pawn.new board: b
  p2= Pawn.new board: b

  b.set_piece(p1,[6,0],"white")
  b.set_piece(p2,[5,0],"black")


  p p2.moves
  p p1.moves

end



