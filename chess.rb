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
  q = Queen.new board: b, position: [3,3], color: "white"
  k = King.new board: b, position: [2,2]
  kn = Knight.new board: b, position: [5,5]

  p q.moves
  puts " "
  p k.moves
  puts
  p kn.moves

end



