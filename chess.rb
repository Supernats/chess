require_relative 'in_check_error'
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

 # p b.opponent_moves(:white)
 # p b.in_check?(:white)
 # p b.move([1,3],[2,3])
 # b.to_s
 # c = b.dup
 # b.to_s
 # c.to_s
 # p  c.in_check?(:white)
 # p b[0,1].class
 # p b[0,1]
 # p b[0,1].moves
 # p b.move([0,1],[2,0])
 #
 #
 # b.to_s
 # puts
 #
 # p b.in_check?(:white)
 # b.to_s
 # puts
 # b.move([1,2],[2,2])
 #
 # b.to_s
 # puts
 # b.move([0,3],[3,0])
 # b.to_s
 # p b.in_check?(:white)
 # p b.check_move_against_check([6,3],[5,3])









end




