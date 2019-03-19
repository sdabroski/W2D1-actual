require_relative "Piece.rb"

class Board

  def initialize
    @grid = Array.new(8) {Array.new(8)}
    self.place_pieces
  end

  def place_pieces
    (0..7).each do |i|
      (0..7).each do |j|
        if i < 2 || i > 5
          @grid[i][j] = Piece.new([i,j])
        end
      end
    end
  end

  def move_piece(start_pos, end_pos)
    start_row, start_col = start_pos
    end_row, end_col = end_pos

    @grid[end_row][end_col] = @grid[start_row][start_col]
    @grid[start_row][start_col] = nil
  end
end