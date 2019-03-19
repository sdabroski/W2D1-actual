require "singleton"

class Piece 
attr_reader :to_s
  def initialize(pos)
    @pos = pos
  end

  def to_s
   return " P "
  end
  
end



class NullPiece < Piece
  include Singleton
  
  def to_s
    return "   "

  end


end