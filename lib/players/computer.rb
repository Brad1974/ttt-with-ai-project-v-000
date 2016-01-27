require 'pry'
class Player::Computer <Player

  attr_accessor :board

 WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]

  def move(board)
     WIN_COMBINATIONS.select do |combo|
      if combo[0,1,2] == board.cells["X", "X", " "]
          return combo[2]
      elsif combo[0,1,2] == board.cells[" ", "X", "X"]
          return combo[0]
      elsif combo[0,1,2] == board.cells["X", " ", "X"]
          return combo[1]
      elsif combo[0,1,2] == board.cells["O", "O", " "]
          return combo[2]
      elsif combo[0,1,2] == board.cells[" ", "O", "O"]
          return combo[0]
      elsif combo[0,1,2] == board.cells["O", " ", "O"]
          return combo[1]
      else 
        false
      end
    end
  end


end
