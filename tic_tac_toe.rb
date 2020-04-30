require 'pry'

class Player 

  attr_accessor :name

  def initialize (name)
    @name = name
  end


end


class Board
    @@number_of_plays=0
    attr_accessor :board


  def initialize()
    @@board = [[1,2,3],[4,5,6],[7,8,9]]
  end

  def currentBoard()
    @@board.each do |cell|
      puts cell.join(" ")
      end
 end

  def chekingWinner()
    #binding.pry
    if @@board[0][0]==@@board[0][1] && @@board[0][1]==@@board[0][2]
      @@board[0][0] =="X" ? endGame("X") : endGame('O')

    elsif @@board[1][0]==@@board[1][1] && @@board[1][1]==@@board[1][2] 
      @@board[1][0] == "X" ? endGame("X") : endGame('O')
    
    elsif @@board[2][0]==@@board[2][1] && @@board[2][1]==@@board[2][2] 
      @@board[2][0] == "X" ? endGame("X") : endGame('O')

    elsif @@board[0][0]==@@board[1][0] && @@board[1][0]==@@board[2][0] 
      @@board[0][0] == "X" ? endGame("X") : endGame('O')

    elsif @@board[0][1]==@@board[1][1] && @@board[1][1]==@@board[2][1] 
      @@board[0][1] == "X" ? endGame('X') : endGame('O')

    elsif @@board[0][2]==@@board[1][2] && @@board[1][2]==@@board[2][2] 
      @@board[0][2] == "X" ? endGame('X') : endGame('O')

    elsif @@board[0][0]==@@board[1][1] && @@board[1][1]==@@board[2][2] 
      @@board[0][0] == "X" ? endGame('X') : endGame('O')

    elsif @@board[0][2]==@@board[1][1] && @@board[1][1]==@@board[2][0] 
      @@board[0][2] == "X" ? endGame('X') : endGame('O')
    end
  end
 
  def p1(play)
    
    puts "did you play number #{play}? Cool"

    case play
    when 1
      @@board[0][0]="X"
    when 2
      @@board[0][1]="X"
    when 3
      @@board[0][2]="X"
    when 4
      @@board[1][0]="X"
    when 5
      @@board[1][1]="X"
    when 6
      @@board[1][2]="X"
    when 7
      @@board[2][0]="X"
    when 8
      @@board[2][1]="X"
    when 9
      @@board[2][2]="X"
    end
  currentBoard()
  chekingWinner()
  end

  def p2(play)
    puts "did you play number #{play}? Cool"
  
    case play
    when 1
      @@board[0][0]="O"
    when 2
      @@board[0][1]="O"
    when 3
      @@board[0][2]="O"
    when 4
      @@board[1][0]="O"
    when 5
      @@board[1][1]="O"
    when 6
      @@board[1][2]="O"
    when 7
      @@board[2][0]="O"
    when 8
      @@board[2][1]="O"
    when 9
      @@board[2][2]="O"
    end
  currentBoard()
  chekingWinner()
  end

  def endGame(winner)
    puts "We have a WINNER! #{winner} VICTORY"
    currentBoard()
    exit
  end

end

 

#Starting Game, Welcoming and getting players names

board = Board.new()
puts "Welcome to Tic-Tac-Toe, this is your Board"
board.currentBoard()

puts "Who is Player One?"
player_one = Player.new(gets.chomp)
puts "Welcome, #{player_one.name}, you will be the X"

puts "Who is Player Two?"
player_two = Player.new(gets.chomp)
puts "Welcome, #{player_two.name}, you will be the O"


#GAME STARTS
puts "Let's play, look at the board"
board.currentBoard()
game = Board.new

puts "What number of cell do you want to play, #{player_one.name}?"
  p1_plays = gets.chomp.to_i
  game.p1(p1_plays)

puts "What number of cell do you want to play, #{player_two.name}?"
  p2_plays = gets.chomp.to_i
  game.p2(p2_plays)

puts "What number of cell do you want to play, #{player_one.name}?"
  p1_plays = gets.chomp.to_i
  game.p1(p1_plays)
  
puts "What number of cell do you want to play, #{player_two.name}?"
  p2_plays = gets.chomp.to_i
  game.p2(p2_plays)

puts "What number of cell do you want to play, #{player_one.name}?"
  p1_plays = gets.chomp.to_i
  game.p1(p1_plays)
    
puts "What number of cell do you want to play, #{player_two.name}?"
  p2_plays = gets.chomp.to_i
  game.p2(p2_plays)

puts "What number of cell do you want to play, #{player_one.name}?"
  p1_plays = gets.chomp.to_i
  game.p1(p1_plays)
    
puts "What number of cell do you want to play, #{player_two.name}?"
  p2_plays = gets.chomp.to_i
  game.p2(p2_plays)

puts "What number of cell do you want to play, #{player_one.name}?"
  p1_plays = gets.chomp.to_i
  game.p1(p1_plays)

puts "Look at the board! It's a Tie!"
  board.currentBoard()



