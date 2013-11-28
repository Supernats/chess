require_relative 'chess'

class Game

  def initialize(board)
    @board = board
  end

  def play
    @board.to_s

    until @board.over?
      puts "Please select a piece"
      start_pos = gets.chomp
      start_pos = start_pos.split(",").map(&:to_i)
      puts "Where are you going?"
      end_pos = gets.chomp
      end_pos = end_pos.split(",").map(&:to_i)
      if @board.check_move_against_check?(start_pos, end_pos)
        puts "You can't move into check"
      else
        @board.move(start_pos,end_pos)
      end
      @board.to_s
    end
  end

end

b = Board.new
g = Game.new(b)
g.play