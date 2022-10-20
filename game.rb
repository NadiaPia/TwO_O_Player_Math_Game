class Game
  
  def initialize
    player1 = Player.new("Player 1")
    player2 = Player.new("Player 2")
    @players = [player1, player2]
    @current_player = 0    
  end

  def play
    loop do
      question = Question.new
      puts "#{@players[@current_player].name}: "      
        if !question.check_answer
          puts "#{@players[@current_player].name}: Seriously? No!" 
          @players[@current_player].lives -= 1
          puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
          if @players[@current_player].lives == 0
            puts "------GAME OVER------" 
            puts "Good bye!"           
            break
          end
          @current_player = @current_player ^ 1
          puts "------NEW TURN------"
        end
    end
    winner = @players[@current_player ^ 1]
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
  end
end