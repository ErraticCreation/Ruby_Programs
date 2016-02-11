def pc_player
  rock_paper_scissors_pc = rand(1..3)
  if rock_paper_scissors_pc == 1
    return 'rock'
  elsif rock_paper_scissors_pc == 2
    return 'paper'
  elsif rock_paper_scissors_pc == 3
    return 'scissors'
  end
end

def rock_paper_scissors_input
  puts "\n|------Rock Paper Scissors!------|\n\nThe options are:\nRock, Paper, Scissors, or Exit.\nSo, what will it be?"
  rock_paper_scissors = gets.chomp
  opponent_answer = pc_player()
  if rock_paper_scissors.downcase == "rock" && opponent_answer == "rock"
    puts "You: Rock\nOpponent: Rock\n\tIt's a Tie!"
    play_again()
  elsif rock_paper_scissors.downcase == "paper" && opponent_answer == "rock"
    puts "You: Paper\nOpponent: Rock\n\tYou Win!"
    play_again()
  elsif rock_paper_scissors.downcase == "scissors" && opponent_answer == "rock"
    puts "You: Paper\nOpponent: Rock\n\tYou Lost!\n\tBetter Luck Next Time."
    play_again()
  elsif rock_paper_scissors.downcase == "rock" && opponent_answer == "paper"
    puts "You: Rock\nOpponent: Paper\n\tYou Lost!\n\tBetter Luck Next Time."
    play_again()
  elsif rock_paper_scissors.downcase == "paper" && opponent_answer == "paper"
    puts "You: Paper\nOpponent: Paper\n\tIt's a Tie!"
    play_again()
  elsif rock_paper_scissors.downcase == "scissors" && opponent_answer == "paper"
    puts "You: Scissors\nOpponent: Paper\n\tYou Win!"
    play_again()
  elsif rock_paper_scissors.downcase == "rock" && opponent_answer == "scissors"
    puts "You: Rock\nOpponent: Scissors\n\tYou Win!"
    play_again()
  elsif rock_paper_scissors.downcase == "paper" && opponent_answer == "scissors"
    puts "You: Paper\nOpponent: Scissors\n\tYou Lost!\n\tBetter Luck Next Time."
    play_again()
  elsif rock_paper_scissors.downcase == "scissors" && opponent_answer == "scissors"
    puts "You: Scissors\nOpponent: Scissors\n\tIt's a Tie!"
    play_again()
  elsif rock_paper_scissors.downcase == "exit"
    quit_game()
  else
    puts "Sorry, I didn't understand your anwser."
    sleep(2)
    rock_paper_scissors_input()
  end
end

def play_again
  sleep(1)
  puts "Would you like to play again?\nThe options are:\n yes or no"
  answer = gets.chomp
  if answer.downcase == "yes"
    rock_paper_scissors_input()
  elsif answer.downcase == "no"
    quit_game()
  else
    puts "Not a valid option"
    play_again()
  end
end

def quit_game
  puts "|-----Thank you for playing!-----|"
  sleep(0.5)
  exit!
end

rock_paper_scissors_input()
