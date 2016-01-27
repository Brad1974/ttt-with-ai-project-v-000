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
    if !board.taken?("5")
      "5"
    elsif !board.taken?("1")
      "1"
    elsif !board.taken?("3")
      "3"
    elsif !board.taken?("7")
      "7"
    elsif !board.taken?("9")
      "9"
    end
  end  


end
