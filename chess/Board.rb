require_relative "Piece.rb"

class Board
attr_accessor :grid
  def initialize
    @grid = Array.new(8) {Array.new(8)}
    self.place_pieces
  end

  def place_pieces
    (0..7).each do |i|
      (0..7).each do |j|
        if i < 2 || i > 5
          @grid[i][j] = Piece.new([i,j])
        # else
        #   @grid[i][j] = NullPiece.instance
        end
      end
    end
  end
  
  
  def [](pos)
    row, col = pos
    self.grid[row][col]
  end

  def []=(pos, value)
    row, col = pos
    self.grid[row][col] = value
  end

  def move_piece(start_pos, end_pos)
    if self[start_pos].nil?
      raise ArgumentError.new "There is no piece at start position"
    end

    if !self[end_pos].nil? 
      raise ArgumentError.new "That end position is occupied by a piece"
    end

    if !(valid_pos?(start_pos) || valid_pos?(end_pos))
      raise ArgumentError.new "Please select a position inside the board"
    end

    self[end_pos] = self[start_pos]
    self[start_pos] = nil
  
  end

  def valid_pos?(pos)
    
    (pos[0] < 0 || pos[0] > 7 || pos[1] < 0 || pos[1] > 7)
      
  end
end