puts "What is your name?"
name = gets.chomp
puts "Hello " + name + ". Let's play Guess Number Game."

def guess_number(player, random_number)
    if player > random_number
        puts "Too high! Try again!"
    elsif player < random_number
        puts "Too low! Try again!"
    end
end

    guesses = []
    attempts = 6
    random_number = rand(100) + 1

    puts "Guess a number between 1 - 100. You only have 6 attempts!"
    while attempts

        player = gets.to_i
        guesses.push(player)

        if player == random_number
           puts "Congratulations, you guessed the number! [#{random_number}]"
           break;
        end
        puts "You've guessed #{guesses}"

        guess_number(player, random_number)
        attempts = attempts - 1

        if attempts == 0
           puts "Sorry, you're out of guesses, the number is [#{random_number}]"
           break;
        else
           puts "Guess the number, you have #{attempts} tries left"
        end
    end
