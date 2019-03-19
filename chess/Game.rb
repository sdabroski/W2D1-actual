require_relative "Piece.rb"

class Game
  attr_accessor current_player
  def initialize
    @board = Board.new
    @display = Display.new
    @players = {}
    @current_player = nil
  end



    def move_piece(start_pos, end_pos)
        



    end

  # def create_player
  #   puts "enter player name"
  #   player_name = gets.chomp
  #   puts "enter player color"
  #   player_color = gets.chomp
  #   puts "enter player type (computer or human)"
  #   player_type = gets.chomp

  #   if player_typ
  # end

  def play
    #calls to all the methods that produce game!
  end

  private
  def notify_players

  end

  def swap_turn!

  end



end