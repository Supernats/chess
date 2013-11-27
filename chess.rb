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
 b.move([6,3],[5,3])
 p b.in_check?("white")
 b.to_s
 puts
 b.move([1,3],[2,3])
 b.to_s
 puts
 p b.move([0,4],[4,0])
 b.to_s
 p b.in_check?("white")








end




