class Question
  
  def initialize
    number1 = rand(1..20)
    number2 = rand(1..20)
    @question = "What does #{number1} plus #{number2} equal? "
    @answer = number1 + number2
  end
  
  def check_answer
    puts @question
    player_answer = gets.chomp 
    #puts player_answer    
    #puts  @answer
    @answer == player_answer.to_i
  end

end