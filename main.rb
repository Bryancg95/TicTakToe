class TicTakToe
 @@player = true
  def create_board(size)
    board = Array.new(size,[])
    return fill_board(board)
  end
  def fill_board(board)
    for i in 0...board.length
      for b in 0...board.length
       board[i][b] = "1"
      end
    end
    return board
  end
  def  select_position_board(board)
       x = gets.chomp
       y = gets.chomp
       if board[x][y] = " "
        if @@player == true
         board[x][y] = "o"
          @@player = false
        else
        end
         board[x][y] = "x"
         @@player = true
       end
  end
end
game = TicTakToe.new
puts "Tell me size of the board:"
size = gets.chomp
size = size.to_i
board = game.create_board(size)
puts board
