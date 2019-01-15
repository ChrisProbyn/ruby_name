require_relative  'user'

player_1 = User.new("Player 1")
player_2 = User.new("Player 2")

def create_question(user)
    num1 = rand(20) +1
    num2 = rand(20) +1
    answer = num1 + num2
    puts "#{user.name}!: What does #{num1} + #{num2} equal"
    guess = gets.chomp.to_i
    if guess == answer
        puts "correct"
    else
        
        user.lives -= 1
        puts "guess again"
        puts "you have #{user.lives} lives left"
    end
end

flag = 0
while(player_1.lives > 0 && player_2.lives > 0)
    
    current_user = nil
    puts "--- New  Turn ---"
    
    if flag.even?
        current_user = player_1
    else 
        current_user = player_2 
    end
    create_question(current_user)
    flag +=1
end

puts "---- Game Over ----"
puts "goodbye"

