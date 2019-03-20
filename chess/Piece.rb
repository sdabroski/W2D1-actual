require 'singleton'
require_relative 'Board.rb'

class Piece 
attr_reader :to_s
# attr_accessor :pos

  def initialize(pos, board, symbol)
    @pos = pos
  end

  def pos=(val)
    @pos = val
  end


  def to_s
   return " x "
  end
  
end



class NullPiece < Piece
  include Singleton

  def initialize
  end
  
  def to_s
    return "   "

  end


end

class Pawn < Piece

  def to_s
    return " P "
  end

end

module Slideable

  #horizontal
  #either the column or the row is the same as piece[col,row]
  if self.pos[0] == i || self.pos[1] == j
  #the position is not equal to the piece's current position
    [i,j] != self.pos
  #n/s/e/w what's the nearest piece,
      (piece_col..7).each {|j| }
      ()
    #whats the symbol of that nearest peice (if opposite, include as possible move)
    #Exlude squares that are beyond the nearest piece.

    def valid_moves
      moves = []
      nearest_north = self.nearest_piece(0, -1)
      nearest_south = self.nearest_piece(0, 1)
      nearest_east = self.nearest_piece(1, 1)
      nearest_west = self.nearest_piece(1, -1)      


  def nearest_piece(axis, direction)
    square = self.pos.dup #make a copy of actual piece position in form [x,x]
    possible_moves = [] #eventually return this
    while valid_pos?(square) #not off the board
      square.pos[axis] += direction  #e.g. [1,1] => [0,1]
      if board.grid[square].is_a?(NullPiece) #if the square is open, it's a possible move!
        possible_moves << square
      elsif !board.grid[square].is_a?(NullPiece) 
        if board.grid[square].symbol != self.symbol
          possible_moves << square
        end
        return possible_moves
      end

      

      if grid[new_pos[ is not a NullPiece] then shovel into moves array

    
  end

  def place_pieces
    (0..7).each do |i|
      (0..7).each do |j|
        
        
        if i < 2 || i > 5
          @grid[i][j] = Piece.new([i,j])
        else
          @grid[i][j] = NullPiece.instance
        end

      end
    end
  end

end

module Stepable


end

