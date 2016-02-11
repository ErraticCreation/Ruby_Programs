def pc_player
  rock_paper_scissors_pc = rand(1..3)
  if (rock_paper_scissors_pc == 1)
    return [-1, "rock"]
  elsif (rock_paper_scissors_pc == 2)
    return [-2, "paper"]
  elsif (rock_paper_scissors_pc == 3)
    return [-3, "scissors"]
  end
end

puts pc_player

def rock_paper_scissors_input
  puts "\n|------Rock Paper Scissors!------|\n\nThe options are:\nRock, Paper, Scissors, or Exit.\nSo, what will it be?"
  rock_paper_scissors = gets.chomp
  if rock_paper_scissors.downcase == "rock"
    return [1, "rock"]
  elsif rock_paper_scissors.downcase == "paper"
    return [2, "paper"]
  elsif rock_paper_scissors.downcase == "scissors"
    return [3, "scissors"]
  elsif rock_paper_scissors.downcase == "exit"
    quit_game()
  else
    puts "Sorry, I didn't understand your anwser."
    sleep(2)
    play_game()
  end
end

def play_game
  pc_answer = pc_player()
  player_answer = rock_paper_scissors_input()
  if (pc_answer[0] + player_answer[0] == 0)
    puts "You: #{player_answer[1]}\nOpponent: #{pc_answer[1]}\n\n\tIt's a Tie!\n"
  elsif (pc_answer[0] + player_answer[0] == -2) || (pc_answer[0] + player_answer[0] == 1)
    puts "You: #{player_answer[1]}\nOpponent: #{pc_answer[1]}\n\n\tYou Win!\n"
  elsif (pc_answer[0] + player_answer[0] == -1) || (pc_answer[0] + player_answer[0] == 2)
    puts "You: #{player_answer[1]}\nOpponent: #{pc_answer[1]}\n\n\tYou Lost!\n\tBetter Luck Next Time.\n"
  end
  play_again()
end

def play_again
  sleep(1)
  puts "Would you like to play again?\nThe options are:\n yes or no"
  answer = gets.chomp
  if answer.downcase == "yes"
    play_game()
  elsif answer.downcase == "no"
    quit_game()
  else
    puts "Not a valid option"
    play_again()
  end
end

def quit_game
  puts "\n|-----Thank you for playing!-----|"
  sleep(0.5)
  exit!
end

play_game()
