def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  print display_card_total(card1+card2)
  return card1+card2
end

def hit?(current_card_total)
  prompt_user
  input = get_user_input
  if input == "s"
    return current_card_total
  elsif input = "h"
    return current_card_total + deal_card
  else
    invalid_command
    hit?(current_card_total)
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  while hand < 21
    hand = hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end
    
