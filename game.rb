require_relative 'chess'

class Game

  def initialize
    @board = Board.new
  end

  def play
    @board.to_s

    until @board.over?
      puts "Please select a piece"
      start_pos = gets.chomp.split(",").map(&:to_i)
      puts "Where are you going?"
      end_pos = gets.chomp.split(",").map(&:to_i)
      @board.move(start_pos,end_pos)
      @board.to_s
    end
  end




end
