# require 'pry'
require_relative "lib/war"
REST_TIME = 2.5

#GAME START
war = War.new
puts "Lets play War!\n"

# Determines if the user wishes to play the game.
game_status = nil
while game_status == nil
  puts "Ready to start? (y/n)"
  input = gets.chomp

  if input.downcase == "n"
    game_status = false
    puts "Goodbye!"
  elsif input.downcase != "y"
    "Incorrect input, try again."
  else
    game_status = true
  end
end

show_graphics = true
puts "Do you want graphics? (y/n)"
answer = gets.chomp
if answer.downcase == "n"
    show_graphics = false
end


# Created a condition where, until one of the players is out of cards,
# continues to play a new round.
if game_status == true
  while !war.game_over?
    puts "Player has #{war.player_score} cards.\nComputer has #{war.computer_score} cards.\n"
    if show_graphics == true
        puts "Player Hand: "
        war.player_hand.prettyPrint
        puts "Computer Hand: "
        war.computer_hand.prettyPrint
        puts "\n"
        war.play_round
        puts "\n...... Battling......\n\n"
        sleep(REST_TIME)
  end
  end

  # Returns which of the players won the game.
  war.game_winner
end
