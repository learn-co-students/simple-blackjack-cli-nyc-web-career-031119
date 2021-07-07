def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return (rand(1..11))
end

def display_card_total (card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # tmp = gets.chomp
  # return(tmp)
  # code #prompt_user here
end

def get_user_input
  return (gets.chomp)
  # code #get_user_input here
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total (sum)
  return(sum)
  # code #initial_round here
  
end

def hit? (card_total)
  prompt_user
  user_input = get_user_input
  if (user_input == "h") 
    card_total = card_total + deal_card
  elsif (user_input != "s")
    invalid_command
    prompt_user
  end
  return(card_total)
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  # puts "card_total = #{card_total}"
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game (card_total)
  # code runner here
end
    
