require "colorize"
require_relative "cursor"

class Display
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end
  # def render 
  #     #Prints current state of board. Called after each move
  #   board.each do |row|
  #     puts
  #     row.each do |col|
  #         print   
  #     end
  #   end

  # end
  




end