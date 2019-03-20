require "colorize"
require_relative "cursor"

class Display
  attr_reader :board
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], @board)

    
    while 1 > 0
      system "clear"
      self.render
      puts
     p @cursor.get_input
      sleep 0.5
      
    end
  end

  
  def render
    color_idx = 0
      #Prints current state of board. Called after each move
    @board.grid.each_with_index do |row, idx1|
      puts
      row.each_with_index do |ele, idx2|
        color_idx += 1
        if color_idx.even? && [idx1,idx2] != @cursor.cursor_pos
          print ele.to_s.colorize( :background => :red).colorize(:black)
        elsif color_idx.odd? && [idx1,idx2] != @cursor.cursor_pos
          print ele.to_s.colorize( :background => :white).colorize(:black)
        else
          print ele.to_s.colorize( :background => :black).colorize(:blue)
        end
      end
      color_idx += 1
    end
    nil
  end


end