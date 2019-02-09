def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  1 + rand(11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
 answer = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  2. times do 
    deal_card
  end 
  card_total = deal_card + deal_card 
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  get_user_input 
  if get_user_input = "s"
  return card_total
  elsif get_user_input = "h"
  card_total += deal_card
  return card_total
  else return invalid_command
end
end
  


def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
 welcome
 initial_round
 until card_total > 21
 hit?
 display_card_total(card_total)
 end 
 end_game(card_total)
end
    
