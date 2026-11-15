
def run_number_guessing
  puts "\n--- NUMBER GUESSING GAME ---"
  puts "Guess a number between 1 and 100!"

  secret_number = rand(1..100)
  attempts = 0

  loop do
    print "Your guess: "
    input = gets.chomp

    unless input.match?(/\A\d+\z/)
      puts "Please enter a valid number!"
      next
    end

    guess = input.to_i
    attempts += 1

    if guess < secret_number
      puts "Too low! Try again."
    elsif guess > secret_number
      puts "Too high! Try again."
    else
      puts "\nCorrect! You won!"
      puts "Attempts: #{attempts}"
      break
    end
  end
end
