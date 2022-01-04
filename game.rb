require './players'
require './questions'

class Game 
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end

  def start_game 
    current_player = @player1
  #while loop
    while (@player1.is_alive && @player2.is_alive) do
    #logic for game goes here
      question = Question.new
      result = question.ask_question(current_player)
      if result 
        puts "#{current_player.name}: YES! You are correct!"
        
      else 
        puts "#{current_player.name}: Seriously? No..."
        current_player.lose_life 
        
      end
      puts "#{@player1.name}: #{@player1.lives}/3 VS  #{@player2.name}: #{@player2.lives}/3"

      puts "---- NEW TURN -----"
      if  current_player == @player1 
          current_player = @player2
        else  
          current_player = @player1
      end
     
    end
    if @player1.is_alive 
        winner = @player1 
      else winner = @player2
    end  
    puts "... some time later ..."
      puts "#{winner.name} wins with a score of #{winner.lives}/3!!! Congrats! "
      puts "---- GAME OVER ----"
  end
  

end