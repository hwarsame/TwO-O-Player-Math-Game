
class Question 
attr_accessor :num1, :num2, :answer

def initialize 
  @num1 = rand (0..20)
  @num2 = rand (0..20)
  @answer = @num1 + @num2
end

def check_answer(guess)
guess == @answer
end

def ask_question(player)
puts "#{player.name}: What does #{num1} + #{num2} equal? "
input = gets.chomp.to_i
return check_answer(input)
end



end
