require 'pry'

class Player::Computer_easy <Player

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
    if    !board.taken?("5")
      "5"
    elsif !board.taken?("1")
      "1"
    elsif !board.taken?("3")
      "3"
    elsif !board.taken?("7")
      "7"
    elsif !board.taken?("9")
      "9"
    elsif !board.taken?("2")
      "2"
    elsif !board.taken?("4")
      "4"
    elsif !board.taken?("6")
      "6"
    elsif !board.taken?("8")
      "8"
    end
  end  


end

class Player::Computer_medium <Player

  attr_accessor :board, :token
  attr_reader 


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

  def opponents_token
    self.token == "O" ? "X" : "O"
  end

    def one_move_away(board)
    one_move_array = WIN_COMBINATIONS.detect do |line|
        (board.cells[line[0]] == token && board.cells[line[1]] == token && board.cells[line[2]] == " ") ||
        (board.cells[line[0]] == token && board.cells[line[2]] == token && board.cells[line[1]] == " ") ||
        (board.cells[line[1]] == token && board.cells[line[2]] == token && board.cells[line[0]] == " ")
       end 
      if one_move_array != nil
       number =  one_move_array.each.detect {|index| board.cells[index] = " "}
       correct_placement = number.to_i + 1
       correct_placement.to_s
     else
     end
   end

  def block(board)
      one_move_array = WIN_COMBINATIONS.detect do |line|
        (board.cells[line[0]] == opponents_token && board.cells[line[1]] == opponents_token && board.cells[line[2]] == " ") ||
        (board.cells[line[0]] == opponents_token && board.cells[line[2]] == opponents_token && board.cells[line[1]] == " ") ||
        (board.cells[line[1]] == opponents_token && board.cells[line[2]] == opponents_token && board.cells[line[0]] == " ")
       end 
    if one_move_array != nil
       number =  one_move_array.each.detect {|index| board.cells[index] = " "}
       correct_placement = number.to_i + 1
       correct_placement.to_s
    else
     end
   end

 def move(board)   

      elsif one_move_away(board) != nil
        one_move_away(board)
      elsif block(board) != nil
        block(board)
    elsif !board.taken?("5")
        "5"
    elsif !board.taken?("1")
      "1"
    elsif !board.taken?("3")
      "3"
    elsif !board.taken?("7")
      "7"
    elsif !board.taken?("9")
      "9"
    elsif !board.taken?("2")
      "2"
    elsif !board.taken?("4")
      "4"
    elsif !board.taken?("6")
      "6"
    elsif !board.taken?("8")
      "8"
    end     
  end
 
  def rand_corner(board)
    rand = board.cells[0,2,6,8]
    random = rand.sample
      if board.taken?(random.to_s)
        rand_corner(board)
      end
  end

end

class Player::Computer_hard <Player

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
    if    !board.taken?("5")
      "5"
    elsif !board.taken?("1")
      "1"
    elsif !board.taken?("3")
      "3"
    elsif !board.taken?("7")
      "7"
    elsif !board.taken?("9")
      "9"
    elsif !board.taken?("2")
      "2"
    elsif !board.taken?("4")
      "4"
    elsif !board.taken?("6")
      "6"
    elsif !board.taken?("8")
      "8"
    end
  end  


end
