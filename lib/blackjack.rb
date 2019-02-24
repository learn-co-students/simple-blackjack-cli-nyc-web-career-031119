def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table."
end

def deal_card
  # code #deal_card here
  puts rand(1..11)
end

def display_card_total(hand_total)
  # code #display_card_total here
  puts "Your cards add up to#{hand_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(hand_total)
  # code #end_game here
  puts "Sorry, you hit #{hand_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first = deal_card
  second = deal_card
  hand_total = first + second
  display_card_total
  return hand_total
end

def hit?(hand_total)
  # code hit? here
  prompt_user
  answer = get_user_input
  if answer == h do
    hit = deal_card
    hand_total += hit
  end
  if answer != s || answer != h do
    invalid_command
  end
  puts hand_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end