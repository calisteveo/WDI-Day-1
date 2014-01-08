number = rand(1..100)
num_guesses = 0
correct = false

puts "Guess a number between 1 and 100"

while correct==false
  guess = gets.chomp.to_i
  num_guesses += 1

  if guess == number
    puts "You got it in #{num_guesses} tries."
    correct = true
  elsif guess > number
    puts "The number is lower than #{guess}. Guess again."
  else guess < number
    puts "The number is higher than #{guess}. Guess again."
  end
end
