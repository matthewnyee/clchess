class Board

  attr_accessor :highlight

  def initialize
    @grid = Array.new(8) { Array.new(8) {nil} }
    #fill_black_pieces
    #fill_white_pieces
    @highlight = [5, 0]
  end

  def move(start_pos, end_pos)
    #select piece at start_pos
    #make end_pos point to piece we're moving
    #make start_pos nil
    #raise exception if no piece at start_pos
    #raise exception if cannot move to end_pos
  end

  def display
    print "\n"*20
    (0...8).each do |y_coord|
      print "#{8-y_coord}  "
      (0...8).each do |x_coord|
        if @highlight[0] == x_coord && @highlight[1] == (7 - y_coord)
          print highlight_square(x_coord, y_coord)
        else
          print "   "
        end
      end
      print "\n"
    end
    print "\n"
    print "   "
    ('A'..'H').each { |letter| print " #{letter} "}
    print "\n"*3
    highlight_square
  end

  def highlight_square(x, y)
    " H "
  end

end
