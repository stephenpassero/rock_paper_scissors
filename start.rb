require_relative("lib/rock_paper_scissors")
require("pry")

def choice_generator()
  random_number = rand(3) + 1
  if random_number == 1
    return "rock"
  elsif random_number == 2
    return "paper"
  elsif random_number == 3
    return "scissors"
  end
end

print "
Welcome to RPS(Rock, Paper, Scissors). "
print "I will prompt you to enter either rock, paper, or scissors. Once you do that, I will tell you if you have won, lost, or tied the round
"
print "However, this game will continue forever until you type quit
"
game = RPS.new()
while true
  print "Enter rock, paper, or scissors: "
  user_choice = gets.strip
  robot_choice = choice_generator
  print "
  The robot choose #{robot_choice}
  "
  if user_choice == "quit" || user_choice == "Quit" || user_choice == "rock" || user_choice == "Rock" || user_choice == "paper" || user_choice == "Paper" || user_choice == "scissors" || user_choice == "Scissors"
    if user_choice == "quit" || user_choice == "Quit"
      break;
    elsif game.wins(user_choice, robot_choice) == true
      print "
      You won that round!
      "
    elsif game.wins(user_choice, robot_choice) == false
      print "
      You lost that round.
      "
    elsif game.wins(user_choice, robot_choice) == "tie"
      print "
      That round was a tie.
      "
    end
  else
    print "That wasn't a valid command. Please "
  end
end
