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

 b.to_s
 puts
 b.move([6,0],[4,0])
 b.to_s
 puts
 b.move([1,1],[3,1])
 b.to_s
 puts
 b.move([3,1],[4,0])
 b.to_s
 p b[4,0]

 duped_board = b.deep_dup
 duped_board.to_s

 duped_board.move([7,0],[5,0])
 duped_board.to_s

 puts "REAL BOARD:"
 b.to_s





end



