def welcome
  # code #welcome here
  puts 'Welcome to the Blackjack Table'
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
  total
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = 0
  2.times do
    total += deal_card
  end
  display_card_total(total)
end

def hit?(total)
  # code hit? here
  prompt_user
  get_user_input
  if input == 'h'
    deal_card
    display_card_total
  break if input == 's'
  display_card_total
  if input != 's' && input != 'h'
    invalid_command
  end
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
  welcome
  initial_round
  loop do hit?
  end
  if total > 21
    end_game(total)
  end
end
